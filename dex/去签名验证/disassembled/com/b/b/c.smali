.class final Lcom/b/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field final synthetic a:Lcom/b/b/x;

.field final synthetic b:Lcom/b/b/a;


# direct methods
.method constructor <init>(Lcom/b/b/a;Lcom/b/b/x;)V
    .registers 3

    iput-object p1, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    iput-object p2, p0, Lcom/b/b/c;->a:Lcom/b/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 5

    iget-object v0, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    invoke-virtual {v0}, Lcom/b/b/a;->c()V

    :try_start_5
    iget-object v0, p0, Lcom/b/b/c;->a:Lcom/b/b/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    iget-object p3, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/b/b/a;->a(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    invoke-virtual {p2, p1}, Lcom/b/b/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/b/b/a;->a(Z)V

    throw p1
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    return-object v0
.end method

.method public final close()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/b/b/c;->a:Lcom/b/b/x;

    invoke-interface {v0}, Lcom/b/b/x;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    iget-object v0, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/b/a;->a(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    invoke-virtual {v1, v0}, Lcom/b/b/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Lcom/b/b/c;->b:Lcom/b/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b/b/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/c;->a:Lcom/b/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
