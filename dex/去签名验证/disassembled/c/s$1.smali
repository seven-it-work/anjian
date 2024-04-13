.class final Lc/s$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/s;->b()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/s;


# direct methods
.method constructor <init>(Lc/s;)V
    .registers 2

    iput-object p1, p0, Lc/s$1;->a:Lc/s;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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

    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    iget-boolean v0, v0, Lc/s;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->flush()V

    :cond_b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/s$1;->a:Lc/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    iget-boolean v0, v0, Lc/s;->c:Z

    if-eqz v0, :cond_e

    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    iget-object v0, v0, Lc/s;->a:Lc/c;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lc/c;->b(I)Lc/c;

    iget-object p1, p0, Lc/s$1;->a:Lc/s;

    invoke-virtual {p1}, Lc/s;->y()Lc/d;

    return-void
.end method

.method public final write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    iget-boolean v0, v0, Lc/s;->c:Z

    if-eqz v0, :cond_e

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-object v0, p0, Lc/s$1;->a:Lc/s;

    iget-object v0, v0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->b([BII)Lc/c;

    iget-object p1, p0, Lc/s$1;->a:Lc/s;

    invoke-virtual {p1}, Lc/s;->y()Lc/d;

    return-void
.end method
