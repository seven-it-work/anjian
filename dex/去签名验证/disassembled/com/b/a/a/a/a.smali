.class public final Lcom/b/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field final a:Lcom/b/a/a/a/i;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/i;

    return-void
.end method

.method private static a(Lcom/b/a/as;)Lcom/b/a/as;
    .registers 2

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .registers 13

    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/i;

    invoke-interface {v0}, Lcom/b/a/a/a/i;->a()Lcom/b/a/as;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/b/a/a/a/e;

    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/b/a/a/a/e;-><init>(JLcom/b/a/ao;Lcom/b/a/as;)V

    invoke-virtual {v4}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/d;

    move-result-object v2

    iget-object v3, v2, Lcom/b/a/a/a/d;->a:Lcom/b/a/ao;

    iget-object v2, v2, Lcom/b/a/a/a/d;->b:Lcom/b/a/as;

    if-eqz v0, :cond_2d

    if-nez v2, :cond_2d

    invoke-virtual {v0}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    :cond_2d
    if-nez v3, :cond_69

    if-nez v2, :cond_69

    new-instance v0, Lcom/b/a/at;

    invoke-direct {v0}, Lcom/b/a/at;-><init>()V

    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b/a/at;->a(Lcom/b/a/ao;)Lcom/b/a/at;

    move-result-object p1

    sget-object v0, Lcom/b/a/al;->b:Lcom/b/a/al;

    invoke-virtual {p1, v0}, Lcom/b/a/at;->a(Lcom/b/a/al;)Lcom/b/a/at;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lcom/b/a/at;->a(I)Lcom/b/a/at;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/b/a/at;->a(Ljava/lang/String;)Lcom/b/a/at;

    move-result-object p1

    sget-object v0, Lcom/b/a/a/c;->c:Lcom/b/a/au;

    invoke-virtual {p1, v0}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/at;->a(J)Lcom/b/a/at;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/at;->b(J)Lcom/b/a/at;

    move-result-object p1

    :goto_64
    invoke-virtual {p1}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    return-object p1

    :cond_69
    if-nez v3, :cond_78

    invoke-virtual {v2}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object p1

    invoke-static {v2}, Lcom/b/a/a/a/a;->a(Lcom/b/a/as;)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b/a/at;->b(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object p1

    goto :goto_64

    :cond_78
    :try_start_78
    invoke-interface {p1, v3}, Lcom/b/a/ag;->a(Lcom/b/a/ao;)Lcom/b/a/as;

    move-result-object p1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_1c6

    if-nez p1, :cond_87

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    :cond_87
    if-eqz v2, :cond_135

    invoke-virtual {p1}, Lcom/b/a/as;->b()I

    move-result v0

    const/16 v3, 0x130

    if-ne v0, v3, :cond_12e

    invoke-virtual {v2}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v2}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v3

    new-instance v4, Lcom/b/a/ab;

    invoke-direct {v4}, Lcom/b/a/ab;-><init>()V

    invoke-virtual {v1}, Lcom/b/a/aa;->a()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a8
    if-ge v7, v5, :cond_d6

    invoke-virtual {v1, v7}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Warning"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c2

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d3

    :cond_c2
    invoke-static {v8}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-virtual {v3, v8}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d3

    :cond_ce
    sget-object v10, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {v10, v4, v8, v9}, Lcom/b/a/a/a;->a(Lcom/b/a/ab;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    :cond_d6
    invoke-virtual {v3}, Lcom/b/a/aa;->a()I

    move-result v1

    :goto_da
    if-ge v6, v1, :cond_fa

    invoke-virtual {v3, v6}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Content-Length"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f7

    invoke-static {v5}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f7

    sget-object v7, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {v3, v6}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8}, Lcom/b/a/a/a;->a(Lcom/b/a/ab;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    :cond_fa
    invoke-virtual {v4}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/as;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/b/a/at;->a(J)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/as;->i()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/b/a/at;->b(J)Lcom/b/a/at;

    move-result-object v0

    invoke-static {v2}, Lcom/b/a/a/a/a;->a(Lcom/b/a/as;)Lcom/b/a/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/at;->b(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object v0

    invoke-static {p1}, Lcom/b/a/a/a/a;->a(Lcom/b/a/as;)Lcom/b/a/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/at;->a(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/au;->close()V

    return-object v0

    :cond_12e
    invoke-virtual {v2}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    :cond_135
    invoke-virtual {p1}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v0

    invoke-static {v2}, Lcom/b/a/a/a/a;->a(Lcom/b/a/as;)Lcom/b/a/as;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/b/a/at;->b(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object v0

    invoke-static {p1}, Lcom/b/a/a/a/a;->a(Lcom/b/a/as;)Lcom/b/a/as;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/b/a/at;->a(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/f;->b(Lcom/b/a/as;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    invoke-virtual {p1}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object p1

    iget-object v2, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/i;

    if-nez v2, :cond_15c

    goto :goto_190

    :cond_15c
    invoke-static {v0, p1}, Lcom/b/a/a/a/d;->a(Lcom/b/a/as;Lcom/b/a/ao;)Z

    move-result v3

    if-nez v3, :cond_18c

    invoke-virtual {p1}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_190

    const-string v2, "PATCH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_190

    const-string v2, "PUT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_190

    const-string v2, "DELETE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_190

    const-string v2, "MOVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_190

    :cond_18c
    invoke-interface {v2}, Lcom/b/a/a/a/i;->b()Lcom/b/a/a/a/c;

    move-result-object v1

    :cond_190
    :goto_190
    if-nez v1, :cond_193

    return-object v0

    :cond_193
    invoke-interface {v1}, Lcom/b/a/a/a/c;->a()Lcom/b/b/w;

    move-result-object p1

    if-nez p1, :cond_19a

    return-object v0

    :cond_19a
    invoke-virtual {v0}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/au;->c()Lcom/b/b/h;

    move-result-object v2

    invoke-static {p1}, Lcom/b/b/n;->a(Lcom/b/b/w;)Lcom/b/b/g;

    move-result-object p1

    new-instance v3, Lcom/b/a/a/a/b;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/b/a/a/a/b;-><init>(Lcom/b/a/a/a/a;Lcom/b/b/h;Lcom/b/a/a/a/c;Lcom/b/b/g;)V

    invoke-virtual {v0}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object p1

    new-instance v1, Lcom/b/a/a/c/i;

    invoke-virtual {v0}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v0

    invoke-static {v3}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    invoke-virtual {p1, v1}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object p1

    move-object v0, p1

    :cond_1c5
    return-object v0

    :catchall_1c6
    move-exception p1

    if-eqz v0, :cond_1d0

    invoke-virtual {v0}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    :cond_1d0
    throw p1
.end method
