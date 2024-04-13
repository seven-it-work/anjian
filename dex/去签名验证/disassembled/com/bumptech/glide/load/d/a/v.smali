.class public final Lcom/bumptech/glide/load/d/a/v;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/v$a;
    }
.end annotation


# instance fields
.field private volatile a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lcom/bumptech/glide/load/b/a/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/d/a/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;B)V
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/v;->f:Lcom/bumptech/glide/load/b/a/b;

    const-class p1, [B

    const/high16 p3, 0x10000

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    return-void
.end method

.method private a(Ljava/io/InputStream;[B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6b

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    if-lt v0, v3, :cond_10

    goto :goto_6b

    :cond_10
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    array-length v1, p2

    if-le v0, v1, :cond_3e

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    array-length v1, p2

    if-ne v0, v1, :cond_3e

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    if-le v0, v1, :cond_27

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    :cond_27
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->f:Lcom/bumptech/glide/load/b/a/b;

    const-class v3, [B

    invoke-interface {v1, v0, v3}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->f:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_4b

    :cond_3e
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    if-lez v0, :cond_4b

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    array-length v1, p2

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    sub-int/2addr v1, v3

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iput v2, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    iput v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_65

    iget p2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    goto :goto_68

    :cond_65
    iget p2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    add-int/2addr p2, p1

    :goto_68
    iput p2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    return p1

    :cond_6b
    :goto_6b
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_77

    iput v1, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    iput v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iput p1, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    :cond_77
    return p1
.end method

.method private static c()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/d/a/v;->c:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-eqz v1, :cond_16

    if-nez v0, :cond_a

    goto :goto_16

    :cond_a
    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_16
    :goto_16
    :try_start_16
    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->f:Lcom/bumptech/glide/load/b/a/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B
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

.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->f:Lcom/bumptech/glide/load/b/a/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_17
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    iget p1, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iput p1, p0, Lcom/bumptech/glide/load/d/a/v;->d:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3b

    if-nez v1, :cond_a

    goto :goto_3b

    :cond_a
    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_19

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/d/a/v;->a(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_40

    if-ne v1, v4, :cond_19

    monitor-exit p0

    return v4

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-nez v0, :cond_26

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_26
    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    aget-byte v0, v0, v1
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_40

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :cond_39
    monitor-exit p0

    return v4

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 9
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_98

    :cond_a
    if-nez p3, :cond_f

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_18
    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    if-ge v2, v3, :cond_45

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v2, v3

    if-lt v2, p3, :cond_27

    move v2, p3

    goto :goto_2c

    :cond_27
    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v2, v3

    :goto_2c
    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    if-eq v2, p3, :cond_43

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_98

    if-nez v3, :cond_3f

    goto :goto_43

    :cond_3f
    add-int/2addr p2, v2

    sub-int v2, p3, v2

    goto :goto_46

    :cond_43
    :goto_43
    monitor-exit p0

    return v2

    :cond_45
    move v2, p3

    :goto_46
    :try_start_46
    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5b

    array-length v3, v0

    if-lt v2, v3, :cond_5b

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_98

    if-ne v3, v4, :cond_8a

    if-ne v2, p3, :cond_58

    monitor-exit p0

    return v4

    :cond_58
    :goto_58
    sub-int/2addr p3, v2

    monitor-exit p0

    return p3

    :cond_5b
    :try_start_5b
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/d/a/v;->a(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_98

    if-ne v3, v4, :cond_65

    if-ne v2, p3, :cond_58

    monitor-exit p0

    return v4

    :cond_65
    :try_start_65
    iget-object v3, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-eq v0, v3, :cond_72

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-nez v0, :cond_72

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_72
    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_7b

    move v3, v2

    goto :goto_80

    :cond_7b
    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v3, v4

    :goto_80
    iget v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I
    :try_end_8a
    .catchall {:try_start_65 .. :try_end_8a} :catchall_98

    :cond_8a
    sub-int/2addr v2, v3

    if-nez v2, :cond_8f

    monitor-exit p0

    return p3

    :cond_8f
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_98

    if-nez v4, :cond_96

    goto :goto_58

    :cond_96
    add-int/2addr p2, v3

    goto :goto_46

    :catchall_98
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, -0x1

    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    if-ne v0, v1, :cond_32

    new-instance v0, Lcom/bumptech/glide/load/d/a/v$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mark has been invalidated, pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/d/a/v$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    iput v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/v;->a:[B

    if-nez v0, :cond_14

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_14
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/v;->in:Ljava/io/InputStream;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/bumptech/glide/load/d/a/v;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_31

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    int-to-long v0, v0

    add-long v2, v0, p1

    long-to-int v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_85

    monitor-exit p0

    return-wide p1

    :cond_31
    :try_start_31
    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    int-to-long v2, v2

    iget v4, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    int-to-long v4, v4

    sub-long v6, v2, v4

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iput v2, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_79

    iget v2, p0, Lcom/bumptech/glide/load/d/a/v;->c:I

    int-to-long v4, v2

    cmp-long v2, p1, v4

    if-gtz v2, :cond_79

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/d/a/v;->a(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_85

    if-ne v0, v3, :cond_51

    monitor-exit p0

    return-wide v6

    :cond_51
    :try_start_51
    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v2, p1, v6

    cmp-long v4, v0, v2

    if-ltz v4, :cond_69

    iget v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    int-to-long v0, v0

    add-long v2, v0, p1

    sub-long v0, v2, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/d/a/v;->e:I
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_85

    monitor-exit p0

    return-wide p1

    :cond_69
    :try_start_69
    iget p1, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    int-to-long p1, p1

    add-long v0, v6, p1

    iget p1, p0, Lcom/bumptech/glide/load/d/a/v;->e:I

    int-to-long p1, p1

    sub-long v2, v0, p1

    iget p1, p0, Lcom/bumptech/glide/load/d/a/v;->b:I

    iput p1, p0, Lcom/bumptech/glide/load/d/a/v;->e:I
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_85

    monitor-exit p0

    return-wide v2

    :cond_79
    const/4 v0, 0x0

    sub-long v2, p1, v6

    :try_start_7c
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_85

    const/4 v0, 0x0

    add-long v0, v6, p1

    monitor-exit p0

    return-wide v0

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method
