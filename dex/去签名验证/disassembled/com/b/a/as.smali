.class public final Lcom/b/a/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Lcom/b/a/ao;

.field final b:Lcom/b/a/al;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lcom/b/a/z;

.field final f:Lcom/b/a/aa;

.field final g:Lcom/b/a/au;

.field final h:Lcom/b/a/as;

.field final i:Lcom/b/a/as;

.field final j:Lcom/b/a/as;

.field final k:J

.field final l:J

.field private volatile m:Lcom/b/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/at;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/at;->a:Lcom/b/a/ao;

    iput-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ao;

    iget-object v0, p1, Lcom/b/a/at;->b:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/al;

    iget v0, p1, Lcom/b/a/at;->c:I

    iput v0, p0, Lcom/b/a/as;->c:I

    iget-object v0, p1, Lcom/b/a/at;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/as;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/at;->e:Lcom/b/a/z;

    iput-object v0, p0, Lcom/b/a/as;->e:Lcom/b/a/z;

    iget-object v0, p1, Lcom/b/a/at;->f:Lcom/b/a/ab;

    invoke-virtual {v0}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/as;->f:Lcom/b/a/aa;

    iget-object v0, p1, Lcom/b/a/at;->g:Lcom/b/a/au;

    iput-object v0, p0, Lcom/b/a/as;->g:Lcom/b/a/au;

    iget-object v0, p1, Lcom/b/a/at;->h:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/as;->h:Lcom/b/a/as;

    iget-object v0, p1, Lcom/b/a/at;->i:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/as;->i:Lcom/b/a/as;

    iget-object v0, p1, Lcom/b/a/at;->j:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/as;->j:Lcom/b/a/as;

    iget-wide v0, p1, Lcom/b/a/at;->k:J

    iput-wide v0, p0, Lcom/b/a/as;->k:J

    iget-wide v0, p1, Lcom/b/a/at;->l:J

    iput-wide v0, p0, Lcom/b/a/as;->l:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ao;
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ao;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/b/a/as;->f:Lcom/b/a/aa;

    invoke-virtual {v0, p1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/b/a/as;->c:I

    return v0
.end method

.method public final c()Lcom/b/a/z;
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->e:Lcom/b/a/z;

    return-object v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->g:Lcom/b/a/au;

    invoke-virtual {v0}, Lcom/b/a/au;->close()V

    return-void
.end method

.method public final d()Lcom/b/a/aa;
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->f:Lcom/b/a/aa;

    return-object v0
.end method

.method public final e()Lcom/b/a/au;
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->g:Lcom/b/a/au;

    return-object v0
.end method

.method public final f()Lcom/b/a/at;
    .registers 2

    new-instance v0, Lcom/b/a/at;

    invoke-direct {v0, p0}, Lcom/b/a/at;-><init>(Lcom/b/a/as;)V

    return-object v0
.end method

.method public final g()Lcom/b/a/e;
    .registers 2

    iget-object v0, p0, Lcom/b/a/as;->m:Lcom/b/a/e;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/b/a/as;->f:Lcom/b/a/aa;

    invoke-static {v0}, Lcom/b/a/e;->a(Lcom/b/a/aa;)Lcom/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/as;->m:Lcom/b/a/e;

    return-object v0
.end method

.method public final h()J
    .registers 3

    iget-wide v0, p0, Lcom/b/a/as;->k:J

    return-wide v0
.end method

.method public final i()J
    .registers 3

    iget-wide v0, p0, Lcom/b/a/as;->l:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/as;->b:Lcom/b/a/al;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ao;

    iget-object v1, v1, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
