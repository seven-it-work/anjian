.class final Lcom/b/a/a/d/g;
.super Lcom/b/a/a/d/b;


# instance fields
.field final synthetic d:Lcom/b/a/a/d/a;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/d/a;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/d/g;->d:Lcom/b/a/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/d/b;-><init>(Lcom/b/a/a/d/a;B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 7

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
    iget-boolean v0, p0, Lcom/b/a/a/d/g;->b:Z

    if-eqz v0, :cond_26

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-boolean v0, p0, Lcom/b/a/a/d/g;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2d

    return-wide v1

    :cond_2d
    iget-object v0, p0, Lcom/b/a/a/d/g;->d:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_40

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/b/a/a/d/g;->e:Z

    invoke-virtual {p0, p1}, Lcom/b/a/a/d/g;->a(Z)V

    return-wide v1

    :cond_40
    return-wide p1
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/d/g;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/b/a/a/d/g;->e:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/d/g;->a(Z)V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/d/g;->b:Z

    return-void
.end method
