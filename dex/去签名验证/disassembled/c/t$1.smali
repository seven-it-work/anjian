.class final Lc/t$1;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t;->e()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/t;


# direct methods
.method constructor <init>(Lc/t;)V
    .registers 2

    iput-object p1, p0, Lc/t$1;->a:Lc/t;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-boolean v0, v0, Lc/t;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->close()V

    return-void
.end method

.method public final read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-boolean v0, v0, Lc/t;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->b:Lc/y;

    iget-object v1, p0, Lc/t$1;->a:Lc/t;

    iget-object v1, v1, Lc/t;->a:Lc/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lc/y;->read(Lc/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    const/4 v0, -0x1

    return v0

    :cond_30
    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-boolean v0, v0, Lc/t;->c:Z

    if-eqz v0, :cond_e

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lc/ab;->a(JJJ)V

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->b:Lc/y;

    iget-object v1, p0, Lc/t$1;->a:Lc/t;

    iget-object v1, v1, Lc/t;->a:Lc/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lc/y;->read(Lc/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    const/4 p1, -0x1

    return p1

    :cond_37
    iget-object v0, p0, Lc/t$1;->a:Lc/t;

    iget-object v0, v0, Lc/t;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a([BII)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/t$1;->a:Lc/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
