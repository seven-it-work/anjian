.class public final Lb/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# instance fields
.field private final a:Lb/n;


# direct methods
.method public constructor <init>(Lb/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/d/a;->a:Lb/n;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/m;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    if-lez v2, :cond_13

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/m;

    iget-object v4, v3, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/w$a;->a()Lb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lb/ac;->c()Lb/ac$a;

    move-result-object v1

    iget-object v2, v0, Lb/ac;->d:Lb/ad;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lb/ad;->contentType()Lb/x;

    move-result-object v3

    if-eqz v3, :cond_1b

    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lb/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    :cond_1b
    invoke-virtual {v2}, Lb/ad;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_34

    const-string v4, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    const-string v2, "Transfer-Encoding"

    :goto_30
    invoke-virtual {v1, v2}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    goto :goto_3e

    :cond_34
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-virtual {v1, v2, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    const-string v2, "Content-Length"

    goto :goto_30

    :cond_3e
    :goto_3e
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_52

    const-string v2, "Host"

    iget-object v4, v0, Lb/ac;->a:Lb/v;

    invoke-static {v4, v3}, Lb/a/c;->a(Lb/v;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    :cond_52
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_61

    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v2, v4}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    :cond_61
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7a

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7a

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v2, v4}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    const/4 v2, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    iget-object v4, p0, Lb/a/d/a;->a:Lb/n;

    invoke-interface {v4}, Lb/n;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ba

    const-string v5, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_92
    if-ge v3, v7, :cond_b3

    if-lez v3, :cond_9b

    const-string v8, "; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/m;

    iget-object v9, v8, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    :cond_b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    :cond_ba
    const-string v3, "User-Agent"

    invoke-virtual {v0, v3}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c9

    const-string v3, "User-Agent"

    const-string v4, "okhttp/3.8.0"

    invoke-virtual {v1, v3, v4}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    :cond_c9
    invoke-virtual {v1}, Lb/ac$a;->d()Lb/ac;

    move-result-object v1

    invoke-interface {p1, v1}, Lb/w$a;->a(Lb/ac;)Lb/ae;

    move-result-object p1

    iget-object v1, p0, Lb/a/d/a;->a:Lb/n;

    iget-object v3, v0, Lb/ac;->a:Lb/v;

    iget-object v4, p1, Lb/ae;->f:Lb/u;

    invoke-static {v1, v3, v4}, Lb/a/d/e;->a(Lb/n;Lb/v;Lb/u;)V

    invoke-virtual {p1}, Lb/ae;->e()Lb/ae$a;

    move-result-object v1

    iput-object v0, v1, Lb/ae$a;->a:Lb/ac;

    if-eqz v2, :cond_125

    const-string v0, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-static {p1}, Lb/a/d/e;->d(Lb/ae;)Z

    move-result v0

    if-eqz v0, :cond_125

    new-instance v0, Lc/l;

    iget-object v2, p1, Lb/ae;->g:Lb/af;

    invoke-virtual {v2}, Lb/af;->source()Lc/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/l;-><init>(Lc/y;)V

    iget-object p1, p1, Lb/ae;->f:Lb/u;

    invoke-virtual {p1}, Lb/u;->b()Lb/u$a;

    move-result-object p1

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    move-result-object p1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/u$a;->a()Lb/u;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    new-instance v2, Lb/a/d/h;

    invoke-static {v0}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lb/a/d/h;-><init>(Lb/u;Lc/e;)V

    iput-object v2, v1, Lb/ae$a;->g:Lb/af;

    :cond_125
    invoke-virtual {v1}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    return-object p1
.end method
