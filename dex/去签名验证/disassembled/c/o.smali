.class public final Lc/o;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# instance fields
.field private final a:Lc/e;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lc/e;Ljava/util/zip/Inflater;)V
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
    iput-object p1, p0, Lc/o;->a:Lc/e;

    iput-object p2, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    return-void
.end method

.method private constructor <init>(Lc/y;Ljava/util/zip/Inflater;)V
    .registers 3

    invoke-static {p1}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lc/o;-><init>(Lc/e;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private a()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lc/o;->b()V

    iget-object v0, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lc/o;->a:Lc/e;

    invoke-interface {v0}, Lc/e;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    iget-object v0, p0, Lc/o;->a:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    iget-object v0, v0, Lc/c;->b:Lc/u;

    iget v2, v0, Lc/u;->e:I

    iget v3, v0, Lc/u;->d:I

    sub-int/2addr v2, v3

    iput v2, p0, Lc/o;->c:I

    iget-object v2, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lc/u;->c:[B

    iget v0, v0, Lc/u;->d:I

    iget v4, p0, Lc/o;->c:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lc/o;->c:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lc/o;->c:I

    iget-object v1, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lc/o;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lc/o;->c:I

    iget-object v1, p0, Lc/o;->a:Lc/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lc/e;->h(J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/o;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/o;->d:Z

    iget-object v0, p0, Lc/o;->a:Lc/e;

    invoke-interface {v0}, Lc/e;->close()V

    return-void
.end method

.method public final read(Lc/c;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-boolean v2, p0, Lc/o;->d:Z

    if-eqz v2, :cond_26

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    cmp-long v2, p2, v0

    if-nez v2, :cond_2b

    return-wide v0

    :cond_2b
    iget-object p2, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_36

    goto :goto_6d

    :cond_36
    invoke-direct {p0}, Lc/o;->b()V

    iget-object p2, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p2

    if-eqz p2, :cond_49

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    iget-object p2, p0, Lc/o;->a:Lc/e;

    invoke-interface {p2}, Lc/e;->d()Z

    move-result p2

    if-eqz p2, :cond_53

    const/4 v0, 0x1

    goto :goto_6d

    :cond_53
    iget-object p2, p0, Lc/o;->a:Lc/e;

    invoke-interface {p2}, Lc/e;->a()Lc/c;

    move-result-object p2

    iget-object p2, p2, Lc/c;->b:Lc/u;

    iget v1, p2, Lc/u;->e:I

    iget v2, p2, Lc/u;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lc/o;->c:I

    iget-object v1, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    iget-object v2, p2, Lc/u;->c:[B

    iget p2, p2, Lc/u;->d:I

    iget v3, p0, Lc/o;->c:I

    invoke-virtual {v1, v2, p2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_6d
    :try_start_6d
    invoke-virtual {p1, p3}, Lc/c;->g(I)Lc/u;

    move-result-object p2

    iget-object p3, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    iget-object v1, p2, Lc/u;->c:[B

    iget v2, p2, Lc/u;->e:I

    iget v3, p2, Lc/u;->e:I

    rsub-int v3, v3, 0x2000

    invoke-virtual {p3, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p3

    if-lez p3, :cond_8e

    iget v0, p2, Lc/u;->e:I

    add-int/2addr v0, p3

    iput v0, p2, Lc/u;->e:I

    iget-wide v0, p1, Lc/c;->c:J

    int-to-long p2, p3

    add-long v2, v0, p2

    iput-wide v2, p1, Lc/c;->c:J

    return-wide p2

    :cond_8e
    iget-object p3, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p3}, Ljava/util/zip/Inflater;->finished()Z

    move-result p3

    if-nez p3, :cond_a9

    iget-object p3, p0, Lc/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p3

    if-eqz p3, :cond_9f

    goto :goto_a9

    :cond_9f
    if-eqz v0, :cond_2b

    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a9
    :goto_a9
    invoke-direct {p0}, Lc/o;->b()V

    iget p3, p2, Lc/u;->d:I

    iget v0, p2, Lc/u;->e:I

    if-ne p3, v0, :cond_bb

    invoke-virtual {p2}, Lc/u;->a()Lc/u;

    move-result-object p3

    iput-object p3, p1, Lc/c;->b:Lc/u;

    invoke-static {p2}, Lc/v;->a(Lc/u;)V
    :try_end_bb
    .catch Ljava/util/zip/DataFormatException; {:try_start_6d .. :try_end_bb} :catch_be

    :cond_bb
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_be
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/o;->a:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method
