.class public final Lcom/b/b/k;
.super Lcom/b/b/y;


# instance fields
.field private a:Lcom/b/b/y;


# direct methods
.method public constructor <init>(Lcom/b/b/y;)V
    .registers 3

    invoke-direct {p0}, Lcom/b/b/y;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput-object p1, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/y;)Lcom/b/b/k;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-object p0
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-object v0
.end method

.method public final a(J)Lcom/b/b/y;
    .registers 4

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;
    .registers 5

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    move-result-object p1

    return-object p1
.end method

.method public final b_()J
    .registers 3

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c_()Z
    .registers 2

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->c_()Z

    move-result v0

    return v0
.end method

.method public final d()J
    .registers 3

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d_()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->d_()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final f_()V
    .registers 2

    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->f_()V

    return-void
.end method
