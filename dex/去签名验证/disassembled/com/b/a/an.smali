.class final Lcom/b/a/an;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:Lcom/b/a/am;

.field private final c:Lcom/b/a/h;


# direct methods
.method constructor <init>(Lcom/b/a/am;Lcom/b/a/h;)V
    .registers 6

    iput-object p1, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/b/a/am;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, v0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    iget-object v0, v0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    iget-object v0, v0, Lcom/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    invoke-virtual {v2}, Lcom/b/a/am;->c()Lcom/b/a/as;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v3, v3, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v3}, Lcom/b/a/a/c/k;->a()Z

    move-result v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_32
    .catchall {:try_start_2 .. :try_end_10} :catchall_30

    if-eqz v3, :cond_21

    :try_start_12
    iget-object v1, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/b/a/h;->a(Ljava/io/IOException;)V

    goto :goto_26

    :catch_1f
    move-exception v1

    goto :goto_35

    :cond_21
    iget-object v1, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    invoke-interface {v1, v2}, Lcom/b/a/h;->a(Lcom/b/a/as;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_1f
    .catchall {:try_start_12 .. :try_end_26} :catchall_30

    :goto_26
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, v0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    invoke-virtual {v0, p0}, Lcom/b/a/u;->b(Lcom/b/a/an;)V

    return-void

    :catchall_30
    move-exception v0

    goto :goto_87

    :catch_32
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_81

    :try_start_37
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v6}, Lcom/b/a/a/c/k;->a()Z

    move-result v6

    if-eqz v6, :cond_55

    const-string v6, "canceled "

    goto :goto_57

    :cond_55
    const-string v6, ""

    :goto_57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/b/a/am;->d:Z

    if-eqz v6, :cond_61

    const-string v6, "web socket"

    goto :goto_63

    :cond_61
    const-string v6, "call"

    :goto_63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/b/a/am;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/b/a/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    :cond_81
    iget-object v0, p0, Lcom/b/a/an;->c:Lcom/b/a/h;

    invoke-interface {v0, v1}, Lcom/b/a/h;->a(Ljava/io/IOException;)V
    :try_end_86
    .catchall {:try_start_37 .. :try_end_86} :catchall_30

    goto :goto_26

    :goto_87
    iget-object v1, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v1, v1, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/an;)V

    throw v0
.end method
