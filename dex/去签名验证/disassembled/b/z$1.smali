.class final Lb/z$1;
.super Lb/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/ae$a;)I
    .registers 2

    iget p1, p1, Lb/ae$a;->c:I

    return p1
.end method

.method public final a(Lb/k;Lb/a;Lb/a/c/g;Lb/ag;)Lb/a/c/c;
    .registers 7

    sget-boolean v0, Lb/k;->g:Z

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-object p1, p1, Lb/k;->d:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/c;

    invoke-virtual {v0, p2, p4}, Lb/a/c/c;->a(Lb/a;Lb/ag;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p3, v0}, Lb/a/c/g;->a(Lb/a/c/c;)V

    return-object v0

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lb/k;)Lb/a/c/d;
    .registers 2

    iget-object p1, p1, Lb/k;->e:Lb/a/c/d;

    return-object p1
.end method

.method public final a(Lb/e;)Lb/a/c/g;
    .registers 2

    check-cast p1, Lb/ab;

    iget-object p1, p1, Lb/ab;->b:Lb/a/d/j;

    iget-object p1, p1, Lb/a/d/j;->a:Lb/a/c/g;

    return-object p1
.end method

.method public final a(Lb/z;Lb/ac;)Lb/e;
    .registers 5

    new-instance v0, Lb/ab;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lb/ab;-><init>(Lb/z;Lb/ac;Z)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/v;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Lb/v;->e(Ljava/lang/String;)Lb/v;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/k;Lb/a;Lb/a/c/g;)Ljava/net/Socket;
    .registers 6

    sget-boolean v0, Lb/k;->g:Z

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-object p1, p1, Lb/k;->d:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/c;

    invoke-virtual {v0, p2, v1}, Lb/a/c/c;->a(Lb/a;Lb/ag;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lb/a/c/c;->e()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p3}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v1

    if-eq v0, v1, :cond_16

    sget-boolean p1, Lb/a/c/g;->h:Z

    if-nez p1, :cond_47

    iget-object p1, p3, Lb/a/c/g;->c:Lb/k;

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_47
    iget-object p1, p3, Lb/a/c/g;->g:Lb/a/d/c;

    if-nez p1, :cond_6e

    iget-object p1, p3, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_57

    goto :goto_6e

    :cond_57
    iget-object p1, p3, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p3, p2, v1, v1}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p2

    iput-object v0, p3, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p3, v0, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_6e
    :goto_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_74
    return-object v1
.end method

.method public final a(Lb/l;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 9

    iget-object v0, p1, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lb/i;->a:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    iget-object v1, p1, Lb/l;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Lb/a/c;->g:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lb/i;->a:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz p3, :cond_41

    const/4 p3, -0x1

    if-eq v3, p3, :cond_41

    aget-object p3, v2, v3

    invoke-static {v0, p3}, Lb/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_41
    new-instance p3, Lb/l$a;

    invoke-direct {p3, p1}, Lb/l$a;-><init>(Lb/l;)V

    invoke-virtual {p3, v0}, Lb/l$a;->a([Ljava/lang/String;)Lb/l$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/l$a;->b([Ljava/lang/String;)Lb/l$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/l$a;->b()Lb/l;

    move-result-object p1

    iget-object p3, p1, Lb/l;->g:[Ljava/lang/String;

    if-eqz p3, :cond_5b

    iget-object p3, p1, Lb/l;->g:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5b
    iget-object p3, p1, Lb/l;->f:[Ljava/lang/String;

    if-eqz p3, :cond_64

    iget-object p1, p1, Lb/l;->f:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method public final a(Lb/u$a;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lb/u$a;->a(Ljava/lang/String;)Lb/u$a;

    return-void
.end method

.method public final a(Lb/u$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lb/u$a;->b(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    return-void
.end method

.method public final a(Lb/z$a;Lb/a/a/f;)V
    .registers 3

    iput-object p2, p1, Lb/z$a;->k:Lb/a/a/f;

    const/4 p2, 0x0

    iput-object p2, p1, Lb/z$a;->j:Lb/c;

    return-void
.end method

.method public final a(Lb/a;Lb/a;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lb/a;->a(Lb/a;)Z

    move-result p1

    return p1
.end method

.method public final a(Lb/k;Lb/a/c/c;)Z
    .registers 4

    sget-boolean v0, Lb/k;->g:Z

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-boolean v0, p2, Lb/a/c/c;->h:Z

    if-nez v0, :cond_1e

    iget v0, p1, Lb/k;->b:I

    if-nez v0, :cond_19

    goto :goto_1e

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    iget-object p1, p1, Lb/k;->d:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lb/k;Lb/a/c/c;)V
    .registers 5

    sget-boolean v0, Lb/k;->g:Z

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-boolean v0, p1, Lb/k;->f:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/k;->f:Z

    sget-object v0, Lb/k;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lb/k;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object p1, p1, Lb/k;->d:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
