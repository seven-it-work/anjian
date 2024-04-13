.class final Lcom/b/a/a/e/v;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:Lcom/b/a/a/e/ab;

.field final synthetic c:Lcom/b/a/a/e/u;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/e/ab;)V
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/e/v;->c:Lcom/b/a/a/e/u;

    iput-object p4, p0, Lcom/b/a/a/e/v;->a:Lcom/b/a/a/e/ab;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/v;->c:Lcom/b/a/a/e/u;

    iget-object v0, v0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->c:Lcom/b/a/a/e/s;

    iget-object v1, p0, Lcom/b/a/a/e/v;->a:Lcom/b/a/a/e/ab;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/s;->a(Lcom/b/a/a/e/ab;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/a/a/e/v;->c:Lcom/b/a/a/e/u;

    iget-object v4, v4, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v4, v4, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/b/a/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_29
    iget-object v0, p0, Lcom/b/a/a/e/v;->a:Lcom/b/a/a/e/ab;

    sget-object v1, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/ab;->a(Lcom/b/a/a/e/b;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method
