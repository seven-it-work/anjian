.class public final Lcom/b/a/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/c/c;


# instance fields
.field final a:Lcom/b/a/ai;

.field final b:Lcom/b/a/a/b/g;

.field final c:Lcom/b/b/h;

.field final d:Lcom/b/b/g;

.field e:I


# direct methods
.method public constructor <init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/b/h;Lcom/b/b/g;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    iput-object p1, p0, Lcom/b/a/a/d/a;->a:Lcom/b/a/ai;

    iput-object p2, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    iput-object p3, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    iput-object p4, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    return-void
.end method

.method static a(Lcom/b/b/k;)V
    .registers 3

    invoke-virtual {p0}, Lcom/b/b/k;->a()Lcom/b/b/y;

    move-result-object v0

    sget-object v1, Lcom/b/b/y;->b:Lcom/b/b/y;

    invoke-virtual {p0, v1}, Lcom/b/b/k;->a(Lcom/b/b/y;)Lcom/b/b/k;

    invoke-virtual {v0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->d_()Lcom/b/b/y;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/b/a/at;
    .registers 5

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/l;->a(Ljava/lang/String;)Lcom/b/a/a/c/l;

    move-result-object v0

    new-instance v1, Lcom/b/a/at;

    invoke-direct {v1}, Lcom/b/a/at;-><init>()V

    iget-object v2, v0, Lcom/b/a/a/c/l;->a:Lcom/b/a/al;

    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Lcom/b/a/al;)Lcom/b/a/at;

    move-result-object v1

    iget v2, v0, Lcom/b/a/a/c/l;->b:I

    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(I)Lcom/b/a/at;

    move-result-object v1

    iget-object v2, v0, Lcom/b/a/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Ljava/lang/String;)Lcom/b/a/at;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/a/d/a;->c()Lcom/b/a/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    move-result-object v1

    if-eqz p1, :cond_53

    iget p1, v0, Lcom/b/a/a/c/l;->b:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_53

    const/4 p1, 0x0

    return-object p1

    :cond_53
    const/4 p1, 0x4

    iput p1, p0, Lcom/b/a/a/d/a;->e:I
    :try_end_56
    .catch Ljava/io/EOFException; {:try_start_20 .. :try_end_56} :catch_57

    return-object v1

    :catch_57
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Lcom/b/a/as;)Lcom/b/a/au;
    .registers 9

    invoke-static {p1}, Lcom/b/a/a/c/f;->b(Lcom/b/a/as;)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d/a;->a(J)Lcom/b/b/x;

    move-result-object v0

    goto/16 :goto_8a

    :cond_e
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    iget v3, p0, Lcom/b/a/a/d/a;->e:I

    if-eq v3, v2, :cond_40

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    iput v1, p0, Lcom/b/a/a/d/a;->e:I

    new-instance v1, Lcom/b/a/a/d/d;

    invoke-direct {v1, p0, v0}, Lcom/b/a/a/d/d;-><init>(Lcom/b/a/a/d/a;Lcom/b/a/ac;)V

    move-object v0, v1

    goto :goto_8a

    :cond_49
    invoke-static {p1}, Lcom/b/a/a/c/f;->a(Lcom/b/a/as;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_58

    invoke-virtual {p0, v3, v4}, Lcom/b/a/a/d/a;->a(J)Lcom/b/b/x;

    move-result-object v0

    goto :goto_8a

    :cond_58
    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    if-eq v0, v2, :cond_72

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    if-nez v0, :cond_7e

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    iput v1, p0, Lcom/b/a/a/d/a;->e:I

    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->d()V

    new-instance v0, Lcom/b/a/a/d/g;

    invoke-direct {v0, p0}, Lcom/b/a/a/d/g;-><init>(Lcom/b/a/a/d/a;)V

    :goto_8a
    new-instance v1, Lcom/b/a/a/c/i;

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p1

    invoke-static {v0}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    return-object v1
.end method

.method public final a(Lcom/b/a/ao;J)Lcom/b/b/w;
    .registers 8

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_32

    iget p1, p0, Lcom/b/a/a/d/a;->e:I

    if-eq p1, v1, :cond_2a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    new-instance p1, Lcom/b/a/a/d/c;

    invoke-direct {p1, p0}, Lcom/b/a/a/d/c;-><init>(Lcom/b/a/a/d/a;)V

    return-object p1

    :cond_32
    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_5a

    iget p1, p0, Lcom/b/a/a/d/a;->e:I

    if-eq p1, v1, :cond_52

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    new-instance p1, Lcom/b/a/a/d/e;

    invoke-direct {p1, p0, p2, p3}, Lcom/b/a/a/d/e;-><init>(Lcom/b/a/a/d/a;J)V

    return-object p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)Lcom/b/b/x;
    .registers 5

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const/4 v0, 0x5

    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    new-instance v0, Lcom/b/a/a/d/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/d/f;-><init>(Lcom/b/a/a/d/a;J)V

    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V

    return-void
.end method

.method public final a(Lcom/b/a/aa;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    if-eqz v0, :cond_1a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0, p2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/b/a/aa;->a()I

    move-result v0

    :goto_2a
    if-ge p2, v0, :cond_4c

    iget-object v1, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-virtual {p1, p2}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    const-string v2, ": "

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_4c
    iget-object p1, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    const/4 p1, 0x1

    iput p1, p0, Lcom/b/a/a/d/a;->e:I

    return-void
.end method

.method public final a(Lcom/b/a/ao;)V
    .registers 5

    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->a()Lcom/b/a/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/b/a/ao;->g()Z

    move-result v2

    if-nez v2, :cond_2f

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_3a
    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/j;->a(Lcom/b/a/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/ao;->c()Lcom/b/a/aa;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/d/a;->a(Lcom/b/a/aa;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V

    return-void
.end method

.method public final c()Lcom/b/a/aa;
    .registers 4

    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    :goto_5
    iget-object v1, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v1}, Lcom/b/b/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/ab;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method
