.class public final Lb/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/a/d/b;->a:Z

    return-void
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/a/d/g;

    iget-object v0, p1, Lb/a/d/g;->b:Lb/a/d/c;

    iget-object v1, p1, Lb/a/d/g;->a:Lb/a/c/g;

    iget-object v2, p1, Lb/a/d/g;->c:Lb/a/c/c;

    check-cast v2, Lb/a/c/c;

    iget-object p1, p1, Lb/a/d/g;->d:Lb/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, p1}, Lb/a/d/c;->a(Lb/ac;)V

    iget-object v5, p1, Lb/ac;->b:Ljava/lang/String;

    invoke-static {v5}, Lb/a/d/f;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_58

    iget-object v5, p1, Lb/ac;->d:Lb/ad;

    if-eqz v5, :cond_58

    const-string v5, "100-continue"

    const-string v7, "Expect"

    invoke-virtual {p1, v7}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v0}, Lb/a/d/c;->a()V

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lb/a/d/c;->a(Z)Lb/ae$a;

    move-result-object v6

    :cond_36
    if-nez v6, :cond_4f

    iget-object v2, p1, Lb/ac;->d:Lb/ad;

    invoke-virtual {v2}, Lb/ad;->contentLength()J

    move-result-wide v7

    invoke-interface {v0, p1, v7, v8}, Lb/a/d/c;->a(Lb/ac;J)Lc/x;

    move-result-object v2

    invoke-static {v2}, Lc/p;->a(Lc/x;)Lc/d;

    move-result-object v2

    iget-object v5, p1, Lb/ac;->d:Lb/ad;

    invoke-virtual {v5, v2}, Lb/ad;->writeTo(Lc/d;)V

    invoke-interface {v2}, Lc/d;->close()V

    goto :goto_58

    :cond_4f
    invoke-virtual {v2}, Lb/a/c/c;->e()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual {v1}, Lb/a/c/g;->d()V

    :cond_58
    :goto_58
    invoke-interface {v0}, Lb/a/d/c;->b()V

    if-nez v6, :cond_62

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lb/a/d/c;->a(Z)Lb/ae$a;

    move-result-object v6

    :cond_62
    iput-object p1, v6, Lb/ae$a;->a:Lb/ac;

    invoke-virtual {v1}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object p1

    iget-object p1, p1, Lb/a/c/c;->d:Lb/t;

    iput-object p1, v6, Lb/ae$a;->e:Lb/t;

    iput-wide v3, v6, Lb/ae$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lb/ae$a;->l:J

    invoke-virtual {v6}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    iget v2, p1, Lb/ae;->c:I

    iget-boolean v3, p0, Lb/a/d/b;->a:Z

    if-eqz v3, :cond_8f

    const/16 v3, 0x65

    if-ne v2, v3, :cond_8f

    invoke-virtual {p1}, Lb/ae;->e()Lb/ae$a;

    move-result-object p1

    sget-object v0, Lb/a/c;->c:Lb/af;

    iput-object v0, p1, Lb/ae$a;->g:Lb/af;

    invoke-virtual {p1}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    goto :goto_9d

    :cond_8f
    invoke-virtual {p1}, Lb/ae;->e()Lb/ae$a;

    move-result-object v3

    invoke-interface {v0, p1}, Lb/a/d/c;->a(Lb/ae;)Lb/af;

    move-result-object p1

    iput-object p1, v3, Lb/ae$a;->g:Lb/af;

    invoke-virtual {v3}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    :goto_9d
    const-string v0, "close"

    iget-object v3, p1, Lb/ae;->a:Lb/ac;

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    const-string v0, "close"

    const-string v3, "Connection"

    invoke-virtual {p1, v3}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    :cond_bb
    invoke-virtual {v1}, Lb/a/c/g;->d()V

    :cond_be
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_c6

    const/16 v0, 0xcd

    if-ne v2, v0, :cond_f4

    :cond_c6
    iget-object v0, p1, Lb/ae;->g:Lb/af;

    invoke-virtual {v0}, Lb/af;->contentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_f4

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lb/ae;->g:Lb/af;

    invoke-virtual {p1}, Lb/af;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f4
    return-object p1
.end method
