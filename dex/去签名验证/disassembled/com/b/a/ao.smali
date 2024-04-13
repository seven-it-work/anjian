.class public final Lcom/b/a/ao;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/b/a/ac;

.field final b:Ljava/lang/String;

.field final c:Lcom/b/a/aa;

.field final d:Lcom/b/a/aq;

.field final e:Ljava/lang/Object;

.field private volatile f:Lcom/b/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/ap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/ap;->a:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ap;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ao;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    invoke-virtual {v0}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ao;->c:Lcom/b/a/aa;

    iget-object v0, p1, Lcom/b/a/ap;->d:Lcom/b/a/aq;

    iput-object v0, p0, Lcom/b/a/ao;->d:Lcom/b/a/aq;

    iget-object v0, p1, Lcom/b/a/ap;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lcom/b/a/ap;->e:Ljava/lang/Object;

    goto :goto_1f

    :cond_1e
    move-object p1, p0

    :goto_1f
    iput-object p1, p0, Lcom/b/a/ao;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ac;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/b/a/ao;->c:Lcom/b/a/aa;

    invoke-virtual {v0, p1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/aa;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->c:Lcom/b/a/aa;

    return-object v0
.end method

.method public final d()Lcom/b/a/aq;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->d:Lcom/b/a/aq;

    return-object v0
.end method

.method public final e()Lcom/b/a/ap;
    .registers 2

    new-instance v0, Lcom/b/a/ap;

    invoke-direct {v0, p0}, Lcom/b/a/ap;-><init>(Lcom/b/a/ao;)V

    return-object v0
.end method

.method public final f()Lcom/b/a/e;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->f:Lcom/b/a/e;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/b/a/ao;->c:Lcom/b/a/aa;

    invoke-static {v0}, Lcom/b/a/e;->a(Lcom/b/a/aa;)Lcom/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ao;->f:Lcom/b/a/e;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    invoke-virtual {v0}, Lcom/b/a/ac;->c()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ao;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_22

    iget-object v1, p0, Lcom/b/a/ao;->e:Ljava/lang/Object;

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
