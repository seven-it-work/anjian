.class final Lcom/b/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field final synthetic a:Lcom/b/b/y;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/b/b/y;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    iput-object p2, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 8

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
    cmp-long v2, p2, v0

    if-nez v2, :cond_1f

    return-wide v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->f_()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    iget v1, v0, Lcom/b/b/t;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    iget-object p3, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    invoke-virtual {p3, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_43

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_43
    iget p3, v0, Lcom/b/b/t;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/b/b/t;->c:I

    iget-wide v0, p1, Lcom/b/b/f;->b:J

    int-to-long p2, p2

    add-long v2, v0, p2

    iput-wide v2, p1, Lcom/b/b/f;->b:J
    :try_end_4f
    .catch Ljava/lang/AssertionError; {:try_start_1f .. :try_end_4f} :catch_50

    return-wide p2

    :catch_50
    move-exception p1

    invoke-static {p1}, Lcom/b/b/n;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_5d

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5d
    throw p1
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/p;->a:Lcom/b/b/y;

    return-object v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
