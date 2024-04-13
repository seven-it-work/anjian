.class public final Lcom/b/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/b/a/a/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .registers 10

    move-object v0, p1

    check-cast v0, Lcom/b/a/a/c/h;

    invoke-virtual {v0}, Lcom/b/a/a/c/h;->c()Lcom/b/a/a/c/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/a/c/h;->b()Lcom/b/a/a/b/g;

    move-result-object v0

    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1}, Lcom/b/a/a/c/c;->a(Lcom/b/a/ao;)V

    invoke-virtual {p1}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/a/c/g;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_59

    invoke-virtual {p1}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v4

    if-eqz v4, :cond_59

    const-string v4, "100-continue"

    const-string v6, "Expect"

    invoke-virtual {p1, v6}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Lcom/b/a/a/c/c;->a()V

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/b/a/a/c/c;->a(Z)Lcom/b/a/at;

    move-result-object v5

    :cond_3d
    if-nez v5, :cond_59

    invoke-virtual {p1}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/aq;->b()J

    move-result-wide v6

    invoke-interface {v1, p1, v6, v7}, Lcom/b/a/a/c/c;->a(Lcom/b/a/ao;J)Lcom/b/b/w;

    move-result-object v4

    invoke-static {v4}, Lcom/b/b/n;->a(Lcom/b/b/w;)Lcom/b/b/g;

    move-result-object v4

    invoke-virtual {p1}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/b/a/aq;->a(Lcom/b/b/g;)V

    invoke-interface {v4}, Lcom/b/b/g;->close()V

    :cond_59
    invoke-interface {v1}, Lcom/b/a/a/c/c;->b()V

    if-nez v5, :cond_63

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/b/a/a/c/c;->a(Z)Lcom/b/a/at;

    move-result-object v5

    :cond_63
    invoke-virtual {v5, p1}, Lcom/b/a/at;->a(Lcom/b/a/ao;)Lcom/b/a/at;

    move-result-object p1

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/a/b/c;->c()Lcom/b/a/z;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/b/a/at;->a(Lcom/b/a/z;)Lcom/b/a/at;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/b/a/at;->a(J)Lcom/b/a/at;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/b/a/at;->b(J)Lcom/b/a/at;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/as;->b()I

    move-result v2

    iget-boolean v3, p0, Lcom/b/a/a/c/b;->a:Z

    if-eqz v3, :cond_9a

    const/16 v3, 0x65

    if-ne v2, v3, :cond_9a

    invoke-virtual {p1}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object p1

    sget-object v1, Lcom/b/a/a/c;->c:Lcom/b/a/au;

    invoke-virtual {p1, v1}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object p1

    goto :goto_a6

    :cond_9a
    invoke-virtual {p1}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v3

    invoke-interface {v1, p1}, Lcom/b/a/a/c/c;->a(Lcom/b/a/as;)Lcom/b/a/au;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object p1

    :goto_a6
    invoke-virtual {p1}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    const-string v1, "close"

    invoke-virtual {p1}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ca

    const-string v1, "close"

    const-string v3, "Connection"

    invoke-virtual {p1, v3}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    :cond_ca
    invoke-virtual {v0}, Lcom/b/a/a/b/g;->d()V

    :cond_cd
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_d5

    const/16 v0, 0xcd

    if-ne v2, v0, :cond_107

    :cond_d5
    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/au;->b()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_107

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/au;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    return-object p1
.end method
