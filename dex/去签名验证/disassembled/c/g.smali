.class public final Lc/g;
.super Ljava/lang/Object;

# interfaces
.implements Lc/x;


# instance fields
.field private final a:Lc/d;

.field private final b:Ljava/util/zip/Deflater;

.field private c:Z


# direct methods
.method constructor <init>(Lc/d;Ljava/util/zip/Deflater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-nez p2, :cond_17

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    iput-object p1, p0, Lc/g;->a:Lc/d;

    iput-object p2, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    return-void
.end method

.method private constructor <init>(Lc/x;Ljava/util/zip/Deflater;)V
    .registers 3

    invoke-static {p1}, Lc/p;->a(Lc/x;)Lc/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lc/g;-><init>(Lc/d;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    iget-object v0, p0, Lc/g;->a:Lc/d;

    invoke-interface {v0}, Lc/d;->a()Lc/c;

    move-result-object v0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/c;->g(I)Lc/u;

    move-result-object v1

    if-eqz p1, :cond_1d

    iget-object v2, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lc/u;->c:[B

    iget v4, v1, Lc/u;->e:I

    iget v5, v1, Lc/u;->e:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_2b

    :cond_1d
    iget-object v2, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lc/u;->c:[B

    iget v4, v1, Lc/u;->e:I

    iget v5, v1, Lc/u;->e:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_2b
    if-lez v2, :cond_3f

    iget v3, v1, Lc/u;->e:I

    add-int/2addr v3, v2

    iput v3, v1, Lc/u;->e:I

    iget-wide v3, v0, Lc/c;->c:J

    int-to-long v1, v2

    add-long v5, v3, v1

    iput-wide v5, v0, Lc/c;->c:J

    iget-object v1, p0, Lc/g;->a:Lc/d;

    invoke-interface {v1}, Lc/d;->y()Lc/d;

    goto :goto_6

    :cond_3f
    iget-object v2, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_6

    iget p1, v1, Lc/u;->d:I

    iget v2, v1, Lc/u;->e:I

    if-ne p1, v2, :cond_56

    invoke-virtual {v1}, Lc/u;->a()Lc/u;

    move-result-object p1

    iput-object p1, v0, Lc/c;->b:Lc/u;

    invoke-static {v1}, Lc/v;->a(Lc/u;)V

    :cond_56
    return-void
.end method


# virtual methods
.method final a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/g;->a(Z)V

    return-void
.end method

.method public final a(Lc/c;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lc/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc/ab;->a(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_48

    iget-object v0, p1, Lc/c;->b:Lc/u;

    iget v1, v0, Lc/u;->e:I

    iget v2, v0, Lc/u;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lc/u;->c:[B

    iget v4, v0, Lc/u;->d:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lc/g;->a(Z)V

    iget-wide v2, p1, Lc/c;->c:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p1, Lc/c;->c:J

    iget v2, v0, Lc/u;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lc/u;->d:I

    iget v1, v0, Lc/u;->d:I

    iget v2, v0, Lc/u;->e:I

    if-ne v1, v2, :cond_43

    invoke-virtual {v0}, Lc/u;->a()Lc/u;

    move-result-object v1

    iput-object v1, p1, Lc/c;->b:Lc/u;

    invoke-static {v0}, Lc/v;->a(Lc/u;)V

    :cond_43
    const/4 v0, 0x0

    sub-long v0, p2, v4

    move-wide p2, v0

    goto :goto_8

    :cond_48
    return-void
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/g;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Lc/g;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    :try_start_b
    iget-object v1, p0, Lc/g;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    if-nez v0, :cond_15

    move-object v0, v1

    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lc/g;->a:Lc/d;

    invoke-interface {v1}, Lc/d;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    if-nez v0, :cond_1f

    move-object v0, v1

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/g;->c:Z

    if-eqz v0, :cond_27

    invoke-static {v0}, Lc/ab;->a(Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/g;->a(Z)V

    iget-object v0, p0, Lc/g;->a:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    return-void
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/g;->a:Lc/d;

    invoke-interface {v0}, Lc/d;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeflaterSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/g;->a:Lc/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
