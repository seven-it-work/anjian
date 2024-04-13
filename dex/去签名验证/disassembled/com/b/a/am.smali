.class final Lcom/b/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/g;


# instance fields
.field final a:Lcom/b/a/ai;

.field final b:Lcom/b/a/a/c/k;

.field final c:Lcom/b/a/ao;

.field final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/b/a/ai;Lcom/b/a/ao;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iput-object p2, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    iput-boolean p3, p0, Lcom/b/a/am;->d:Z

    new-instance p2, Lcom/b/a/a/c/k;

    invoke-direct {p2, p1, p3}, Lcom/b/a/a/c/k;-><init>(Lcom/b/a/ai;Z)V

    iput-object p2, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    return-void
.end method

.method private d()V
    .registers 3

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-virtual {v1, v0}, Lcom/b/a/a/c/k;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/as;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/am;->e:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/am;->e:Z

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3a

    invoke-direct {p0}, Lcom/b/a/am;->d()V

    :try_start_14
    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/am;)V

    invoke-virtual {p0}, Lcom/b/a/am;->c()Lcom/b/a/as;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_31

    :cond_29
    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/am;)V

    return-object v0

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v1, v1, Lcom/b/a/ai;->c:Lcom/b/a/u;

    invoke-virtual {v1, p0}, Lcom/b/a/u;->b(Lcom/b/a/am;)V

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final a(Lcom/b/a/h;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/am;->e:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/am;->e:Z

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    invoke-direct {p0}, Lcom/b/a/am;->d()V

    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v0, v0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    new-instance v1, Lcom/b/a/an;

    invoke-direct {v1, p0, p1}, Lcom/b/a/an;-><init>(Lcom/b/a/am;Lcom/b/a/h;)V

    invoke-virtual {v0, v1}, Lcom/b/a/u;->a(Lcom/b/a/an;)V

    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method final b()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    iget-object v0, v0, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lcom/b/a/ac;->d(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object v0

    const-string v1, ""

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/b/a/as;
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v0, v0, Lcom/b/a/ai;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/b/a/am;->b:Lcom/b/a/a/c/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/b/a/a/c/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v2, v2, Lcom/b/a/ai;->j:Lcom/b/a/s;

    invoke-direct {v0, v2}, Lcom/b/a/a/c/a;-><init>(Lcom/b/a/s;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v3, v2, Lcom/b/a/ai;->k:Lcom/b/a/d;

    if-eqz v3, :cond_2a

    iget-object v2, v2, Lcom/b/a/ai;->k:Lcom/b/a/d;

    iget-object v2, v2, Lcom/b/a/d;->a:Lcom/b/a/a/a/i;

    goto :goto_2c

    :cond_2a
    iget-object v2, v2, Lcom/b/a/ai;->l:Lcom/b/a/a/a/i;

    :goto_2c
    invoke-direct {v0, v2}, Lcom/b/a/a/a/a;-><init>(Lcom/b/a/a/a/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/b/a/a/b/a;

    iget-object v2, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    invoke-direct {v0, v2}, Lcom/b/a/a/b/a;-><init>(Lcom/b/a/ai;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/b/a/am;->d:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v0, v0, Lcom/b/a/ai;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_47
    new-instance v0, Lcom/b/a/a/c/b;

    iget-boolean v2, p0, Lcom/b/a/am;->d:Z

    invoke-direct {v0, v2}, Lcom/b/a/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/b/a/a/c/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/b/a/a/c/h;-><init>(Ljava/util/List;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;ILcom/b/a/ao;)V

    iget-object v0, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    invoke-interface {v7, v0}, Lcom/b/a/ag;->a(Lcom/b/a/ao;)Lcom/b/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/b/a/am;

    iget-object v1, p0, Lcom/b/a/am;->a:Lcom/b/a/ai;

    iget-object v2, p0, Lcom/b/a/am;->c:Lcom/b/a/ao;

    iget-boolean v3, p0, Lcom/b/a/am;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/am;-><init>(Lcom/b/a/ai;Lcom/b/a/ao;Z)V

    return-object v0
.end method
