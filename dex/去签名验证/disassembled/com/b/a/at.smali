.class public final Lcom/b/a/at;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/b/a/ao;

.field b:Lcom/b/a/al;

.field c:I

.field d:Ljava/lang/String;

.field e:Lcom/b/a/z;

.field f:Lcom/b/a/ab;

.field g:Lcom/b/a/au;

.field h:Lcom/b/a/as;

.field i:Lcom/b/a/as;

.field j:Lcom/b/a/as;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/at;->c:I

    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    iput-object v0, p0, Lcom/b/a/at;->f:Lcom/b/a/ab;

    return-void
.end method

.method constructor <init>(Lcom/b/a/as;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/at;->c:I

    iget-object v0, p1, Lcom/b/a/as;->a:Lcom/b/a/ao;

    iput-object v0, p0, Lcom/b/a/at;->a:Lcom/b/a/ao;

    iget-object v0, p1, Lcom/b/a/as;->b:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/at;->b:Lcom/b/a/al;

    iget v0, p1, Lcom/b/a/as;->c:I

    iput v0, p0, Lcom/b/a/at;->c:I

    iget-object v0, p1, Lcom/b/a/as;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/at;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/as;->e:Lcom/b/a/z;

    iput-object v0, p0, Lcom/b/a/at;->e:Lcom/b/a/z;

    iget-object v0, p1, Lcom/b/a/as;->f:Lcom/b/a/aa;

    invoke-virtual {v0}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/at;->f:Lcom/b/a/ab;

    iget-object v0, p1, Lcom/b/a/as;->g:Lcom/b/a/au;

    iput-object v0, p0, Lcom/b/a/at;->g:Lcom/b/a/au;

    iget-object v0, p1, Lcom/b/a/as;->h:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/at;->h:Lcom/b/a/as;

    iget-object v0, p1, Lcom/b/a/as;->i:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/at;->i:Lcom/b/a/as;

    iget-object v0, p1, Lcom/b/a/as;->j:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/at;->j:Lcom/b/a/as;

    iget-wide v0, p1, Lcom/b/a/as;->k:J

    iput-wide v0, p0, Lcom/b/a/at;->k:J

    iget-wide v0, p1, Lcom/b/a/as;->l:J

    iput-wide v0, p0, Lcom/b/a/at;->l:J

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/b/a/as;)V
    .registers 3

    iget-object v0, p1, Lcom/b/a/as;->g:Lcom/b/a/au;

    if-eqz v0, :cond_1b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".body != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v0, p1, Lcom/b/a/as;->h:Lcom/b/a/as;

    if-eqz v0, :cond_36

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".networkResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v0, p1, Lcom/b/a/as;->i:Lcom/b/a/as;

    if-eqz v0, :cond_51

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cacheResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    iget-object p1, p1, Lcom/b/a/as;->j:Lcom/b/a/as;

    if-eqz p1, :cond_6c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".priorResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/as;
    .registers 4

    iget-object v0, p0, Lcom/b/a/at;->a:Lcom/b/a/ao;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/a/at;->b:Lcom/b/a/al;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lcom/b/a/at;->c:I

    if-gez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/at;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Lcom/b/a/as;

    invoke-direct {v0, p0}, Lcom/b/a/as;-><init>(Lcom/b/a/at;)V

    return-object v0
.end method

.method public final a(I)Lcom/b/a/at;
    .registers 2

    iput p1, p0, Lcom/b/a/at;->c:I

    return-object p0
.end method

.method public final a(J)Lcom/b/a/at;
    .registers 3

    iput-wide p1, p0, Lcom/b/a/at;->k:J

    return-object p0
.end method

.method public final a(Lcom/b/a/aa;)Lcom/b/a/at;
    .registers 2

    invoke-virtual {p1}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/at;->f:Lcom/b/a/ab;

    return-object p0
.end method

.method public final a(Lcom/b/a/al;)Lcom/b/a/at;
    .registers 2

    iput-object p1, p0, Lcom/b/a/at;->b:Lcom/b/a/al;

    return-object p0
.end method

.method public final a(Lcom/b/a/ao;)Lcom/b/a/at;
    .registers 2

    iput-object p1, p0, Lcom/b/a/at;->a:Lcom/b/a/ao;

    return-object p0
.end method

.method public final a(Lcom/b/a/as;)Lcom/b/a/at;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lcom/b/a/at;->a(Ljava/lang/String;Lcom/b/a/as;)V

    :cond_7
    iput-object p1, p0, Lcom/b/a/at;->h:Lcom/b/a/as;

    return-object p0
.end method

.method public final a(Lcom/b/a/au;)Lcom/b/a/at;
    .registers 2

    iput-object p1, p0, Lcom/b/a/at;->g:Lcom/b/a/au;

    return-object p0
.end method

.method public final a(Lcom/b/a/z;)Lcom/b/a/at;
    .registers 2

    iput-object p1, p0, Lcom/b/a/at;->e:Lcom/b/a/z;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/at;
    .registers 2

    iput-object p1, p0, Lcom/b/a/at;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/at;
    .registers 4

    iget-object v0, p0, Lcom/b/a/at;->f:Lcom/b/a/ab;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-object p0
.end method

.method public final b(J)Lcom/b/a/at;
    .registers 3

    iput-wide p1, p0, Lcom/b/a/at;->l:J

    return-object p0
.end method

.method public final b(Lcom/b/a/as;)Lcom/b/a/at;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lcom/b/a/at;->a(Ljava/lang/String;Lcom/b/a/as;)V

    :cond_7
    iput-object p1, p0, Lcom/b/a/at;->i:Lcom/b/a/as;

    return-object p0
.end method

.method public final c(Lcom/b/a/as;)Lcom/b/a/at;
    .registers 3

    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/b/a/as;->g:Lcom/b/a/au;

    if-eqz v0, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iput-object p1, p0, Lcom/b/a/at;->j:Lcom/b/a/as;

    return-object p0
.end method
