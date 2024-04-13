.class final Lb/a/k/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/k/c$a;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Lc/e;

.field final c:Lb/a/k/c$a;

.field d:Z

.field e:I

.field f:J

.field g:J

.field h:Z

.field i:Z

.field j:Z

.field final k:[B

.field final l:[B


# direct methods
.method constructor <init>(ZLc/e;Lb/a/k/c$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/k/c;->k:[B

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/k/c;->l:[B

    if-nez p2, :cond_18

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    if-nez p3, :cond_22

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "frameCallback == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    iput-boolean p1, p0, Lb/a/k/c;->a:Z

    iput-object p2, p0, Lb/a/k/c;->b:Lc/e;

    iput-object p3, p0, Lb/a/k/c;->c:Lb/a/k/c$a;

    return-void
.end method

.method private a(Lc/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lb/a/k/c;->d:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-wide v0, p0, Lb/a/k/c;->g:J

    iget-wide v2, p0, Lb/a/k/c;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_47

    iget-boolean v0, p0, Lb/a/k/c;->h:Z

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-direct {p0}, Lb/a/k/c;->e()V

    iget v0, p0, Lb/a/k/c;->e:I

    if-eqz v0, :cond_3a

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected continuation opcode. Got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/k/c;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-boolean v0, p0, Lb/a/k/c;->h:Z

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lb/a/k/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_47

    return-void

    :cond_47
    iget-wide v0, p0, Lb/a/k/c;->f:J

    iget-wide v2, p0, Lb/a/k/c;->g:J

    sub-long v4, v0, v2

    iget-boolean v0, p0, Lb/a/k/c;->j:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_81

    iget-object v0, p0, Lb/a/k/c;->l:[B

    array-length v0, v0

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v0, p0, Lb/a/k/c;->b:Lc/e;

    iget-object v5, p0, Lb/a/k/c;->l:[B

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v5, v4, v3}, Lc/e;->a([BII)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v1

    if-nez v0, :cond_70

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_70
    iget-object v5, p0, Lb/a/k/c;->l:[B

    iget-object v8, p0, Lb/a/k/c;->k:[B

    iget-wide v9, p0, Lb/a/k/c;->g:J

    move-wide v6, v11

    invoke-static/range {v5 .. v10}, Lb/a/k/b;->a([BJ[BJ)V

    iget-object v0, p0, Lb/a/k/c;->l:[B

    long-to-int v1, v11

    invoke-virtual {p1, v0, v4, v1}, Lc/c;->b([BII)Lc/c;

    goto :goto_91

    :cond_81
    iget-object v0, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v0, p1, v4, v5}, Lc/e;->read(Lc/c;J)J

    move-result-wide v11

    cmp-long v0, v11, v1

    if-nez v0, :cond_91

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_91
    :goto_91
    iget-wide v0, p0, Lb/a/k/c;->g:J

    add-long v2, v0, v11

    iput-wide v2, p0, Lb/a/k/c;->g:J

    goto/16 :goto_0
.end method

.method private b()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/k/c;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/z;->l_()J

    move-result-wide v0

    iget-object v2, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v2}, Lc/e;->timeout()Lc/z;

    move-result-object v2

    invoke-virtual {v2}, Lc/z;->d()Lc/z;

    :try_start_1f
    iget-object v2, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v2}, Lc/e;->g()B

    move-result v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_118

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->timeout()Lc/z;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    and-int/lit8 v0, v2, 0xf

    iput v0, p0, Lb/a/k/c;->e:I

    and-int/lit16 v0, v2, 0x80

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    iput-boolean v0, p0, Lb/a/k/c;->h:Z

    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    iput-boolean v0, p0, Lb/a/k/c;->i:Z

    iget-boolean v0, p0, Lb/a/k/c;->i:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lb/a/k/c;->h:Z

    if-nez v0, :cond_5a

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    goto :goto_68

    :cond_67
    const/4 v4, 0x0

    :goto_68
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6e

    const/4 v2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    if-nez v0, :cond_110

    if-nez v4, :cond_110

    if-eqz v2, :cond_77

    goto/16 :goto_110

    :cond_77
    iget-object v0, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_84

    const/4 v1, 0x1

    :cond_84
    iput-boolean v1, p0, Lb/a/k/c;->j:Z

    iget-boolean v1, p0, Lb/a/k/c;->j:Z

    iget-boolean v2, p0, Lb/a/k/c;->a:Z

    if-ne v1, v2, :cond_9b

    new-instance v0, Ljava/net/ProtocolException;

    iget-boolean v1, p0, Lb/a/k/c;->a:Z

    if-eqz v1, :cond_95

    const-string v1, "Server-sent frames must not be masked."

    goto :goto_97

    :cond_95
    const-string v1, "Client-sent frames must be masked."

    :goto_97
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lb/a/k/c;->f:J

    iget-wide v0, p0, Lb/a/k/c;->f:J

    const-wide/16 v2, 0x7e

    cmp-long v4, v0, v2

    const-wide/16 v0, 0x0

    if-nez v4, :cond_b9

    iget-object v2, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v2}, Lc/e;->h()S

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long v6, v2, v4

    iput-wide v6, p0, Lb/a/k/c;->f:J

    goto :goto_ee

    :cond_b9
    iget-wide v2, p0, Lb/a/k/c;->f:J

    const-wide/16 v4, 0x7f

    cmp-long v6, v2, v4

    if-nez v6, :cond_ee

    iget-object v2, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v2}, Lc/e;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lb/a/k/c;->f:J

    iget-wide v2, p0, Lb/a/k/c;->f:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_ee

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Frame length 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/a/k/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ee
    :goto_ee
    iput-wide v0, p0, Lb/a/k/c;->g:J

    iget-boolean v0, p0, Lb/a/k/c;->i:Z

    if-eqz v0, :cond_104

    iget-wide v0, p0, Lb/a/k/c;->f:J

    const-wide/16 v2, 0x7d

    cmp-long v4, v0, v2

    if-lez v4, :cond_104

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    iget-boolean v0, p0, Lb/a/k/c;->j:Z

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lb/a/k/c;->b:Lc/e;

    iget-object v1, p0, Lb/a/k/c;->k:[B

    invoke-interface {v0, v1}, Lc/e;->b([B)V

    :cond_10f
    return-void

    :cond_110
    :goto_110
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_118
    move-exception v2

    iget-object v3, p0, Lb/a/k/c;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->timeout()Lc/z;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    throw v2
.end method

.method private c()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iget-wide v1, p0, Lb/a/k/c;->g:J

    iget-wide v3, p0, Lb/a/k/c;->f:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_59

    iget-boolean v1, p0, Lb/a/k/c;->a:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lb/a/k/c;->b:Lc/e;

    iget-wide v2, p0, Lb/a/k/c;->f:J

    invoke-interface {v1, v0, v2, v3}, Lc/e;->b(Lc/c;J)V

    goto :goto_59

    :cond_19
    :goto_19
    iget-wide v1, p0, Lb/a/k/c;->g:J

    iget-wide v3, p0, Lb/a/k/c;->f:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_59

    iget-wide v1, p0, Lb/a/k/c;->f:J

    iget-wide v3, p0, Lb/a/k/c;->g:J

    sub-long v5, v1, v3

    iget-object v1, p0, Lb/a/k/c;->l:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lb/a/k/c;->b:Lc/e;

    iget-object v3, p0, Lb/a/k/c;->l:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lc/e;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_42

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_42
    iget-object v5, p0, Lb/a/k/c;->l:[B

    int-to-long v2, v1

    iget-object v8, p0, Lb/a/k/c;->k:[B

    iget-wide v9, p0, Lb/a/k/c;->g:J

    move-wide v6, v2

    invoke-static/range {v5 .. v10}, Lb/a/k/b;->a([BJ[BJ)V

    iget-object v5, p0, Lb/a/k/c;->l:[B

    invoke-virtual {v0, v5, v4, v1}, Lc/c;->b([BII)Lc/c;

    iget-wide v4, p0, Lb/a/k/c;->g:J

    add-long v6, v4, v2

    iput-wide v6, p0, Lb/a/k/c;->g:J

    goto :goto_19

    :cond_59
    :goto_59
    iget v1, p0, Lb/a/k/c;->e:I

    packed-switch v1, :pswitch_data_c2

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown control opcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/a/k/c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_78
    iget-object v1, p0, Lb/a/k/c;->c:Lb/a/k/c$a;

    invoke-virtual {v0}, Lc/c;->p()Lc/f;

    invoke-interface {v1}, Lb/a/k/c$a;->h()V

    return-void

    :pswitch_81
    iget-object v1, p0, Lb/a/k/c;->c:Lb/a/k/c$a;

    invoke-virtual {v0}, Lc/c;->p()Lc/f;

    move-result-object v0

    invoke-interface {v1, v0}, Lb/a/k/c$a;->b(Lc/f;)V

    return-void

    :pswitch_8b
    const/16 v1, 0x3ed

    const-string v2, ""

    iget-wide v3, v0, Lc/c;->c:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_9f

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b9

    invoke-virtual {v0}, Lc/c;->h()S

    move-result v1

    invoke-virtual {v0}, Lc/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lb/a/k/b;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b9
    iget-object v0, p0, Lb/a/k/c;->c:Lb/a/k/c$a;

    invoke-interface {v0, v1, v2}, Lb/a/k/c$a;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/k/c;->d:Z

    return-void

    :pswitch_data_c2
    .packed-switch 0x8
        :pswitch_8b
        :pswitch_81
        :pswitch_78
    .end packed-switch
.end method

.method private d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/k/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v2, Lc/c;

    invoke-direct {v2}, Lc/c;-><init>()V

    invoke-direct {p0, v2}, Lb/a/k/c;->a(Lc/c;)V

    if-ne v0, v1, :cond_2e

    invoke-virtual {v2}, Lc/c;->q()Ljava/lang/String;

    return-void

    :cond_2e
    invoke-virtual {v2}, Lc/c;->p()Lc/f;

    return-void
.end method

.method private e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lb/a/k/c;->d:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lb/a/k/c;->b()V

    iget-boolean v0, p0, Lb/a/k/c;->i:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lb/a/k/c;->c()V

    goto :goto_0

    :cond_f
    return-void
.end method


# virtual methods
.method final a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lb/a/k/c;->b()V

    iget-boolean v0, p0, Lb/a/k/c;->i:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lb/a/k/c;->c()V

    return-void

    :cond_b
    iget v0, p0, Lb/a/k/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v2, Lc/c;

    invoke-direct {v2}, Lc/c;-><init>()V

    invoke-direct {p0, v2}, Lb/a/k/c;->a(Lc/c;)V

    if-ne v0, v1, :cond_39

    invoke-virtual {v2}, Lc/c;->q()Ljava/lang/String;

    return-void

    :cond_39
    invoke-virtual {v2}, Lc/c;->p()Lc/f;

    return-void
.end method
