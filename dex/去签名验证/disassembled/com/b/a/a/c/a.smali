.class public final Lcom/b/a/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field private final a:Lcom/b/a/s;


# direct methods
.method public constructor <init>(Lcom/b/a/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .registers 12

    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ao;->e()Lcom/b/a/ap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/b/a/aq;->a()Lcom/b/a/ah;

    move-result-object v3

    if-eqz v3, :cond_1d

    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lcom/b/a/ah;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_1d
    invoke-virtual {v2}, Lcom/b/a/aq;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_36

    const-string v4, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const-string v2, "Transfer-Encoding"

    :goto_32
    invoke-virtual {v1, v2}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    goto :goto_40

    :cond_36
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-virtual {v1, v2, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const-string v2, "Content-Length"

    goto :goto_32

    :cond_40
    :goto_40
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_56

    const-string v2, "Host"

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/b/a/a/c;->a(Lcom/b/a/ac;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_56
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_65

    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_65
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7e

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7e

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v2, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    const/4 v2, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :goto_7f
    iget-object v4, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    invoke-interface {v4}, Lcom/b/a/s;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c2

    const-string v5, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_96
    if-ge v3, v7, :cond_bb

    if-lez v3, :cond_9f

    const-string v8, "; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/r;

    invoke-virtual {v8}, Lcom/b/a/r;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/b/a/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    :cond_bb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_c2
    const-string v3, "User-Agent"

    invoke-virtual {v0, v3}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d1

    const-string v3, "User-Agent"

    const-string v4, "okhttp/3.6.0"

    invoke-virtual {v1, v3, v4}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    :cond_d1
    invoke-virtual {v1}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/b/a/ag;->a(Lcom/b/a/ao;)Lcom/b/a/as;

    move-result-object p1

    iget-object v1, p0, Lcom/b/a/a/c/a;->a:Lcom/b/a/s;

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/b/a/a/c/f;->a(Lcom/b/a/s;Lcom/b/a/ac;Lcom/b/a/aa;)V

    invoke-virtual {p1}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/at;->a(Lcom/b/a/ao;)Lcom/b/a/at;

    move-result-object v0

    if-eqz v2, :cond_138

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-static {p1}, Lcom/b/a/a/c/f;->b(Lcom/b/a/as;)Z

    move-result v1

    if-eqz v1, :cond_138

    new-instance v1, Lcom/b/b/l;

    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/au;->c()Lcom/b/b/h;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b/b/l;-><init>(Lcom/b/b/x;)V

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object p1

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    move-result-object p1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    new-instance v2, Lcom/b/a/a/c/i;

    invoke-static {v1}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    invoke-virtual {v0, v2}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    :cond_138
    invoke-virtual {v0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    return-object p1
.end method
