.class final Lcom/b/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/w;


# instance fields
.field final synthetic a:Lcom/b/b/y;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/b/b/y;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/b/b/o;->a:Lcom/b/b/y;

    iput-object p2, p0, Lcom/b/b/o;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/o;->a:Lcom/b/b/y;

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .registers 11

    iget-wide v0, p1, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_48

    iget-object v0, p0, Lcom/b/b/o;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->f_()V

    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v0, Lcom/b/b/t;->c:I

    iget v2, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/b/b/o;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/b/b/t;->a:[B

    iget v4, v0, Lcom/b/b/t;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lcom/b/b/t;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/b/b/t;->b:I

    int-to-long v1, v1

    sub-long v3, p2, v1

    iget-wide p2, p1, Lcom/b/b/f;->b:J

    sub-long v5, p2, v1

    iput-wide v5, p1, Lcom/b/b/f;->b:J

    iget p2, v0, Lcom/b/b/t;->b:I

    iget p3, v0, Lcom/b/b/t;->c:I

    if-ne p2, p3, :cond_46

    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p2

    iput-object p2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_46
    move-wide p2, v3

    goto :goto_8

    :cond_48
    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/b/b/o;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/b/b/o;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/o;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
