.class public final Lcom/google/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/b;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    new-instance v0, Lcom/google/a/a/b/a;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/a/b/a;-><init>(Lcom/google/a/c/b;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, p1}, Lcom/google/a/a/b/a;->a(Z)Lcom/google/a/a/a;

    move-result-object p1

    iget-object v2, p1, Lcom/google/a/c/g;->e:[Lcom/google/a/t;
    :try_end_11
    .catch Lcom/google/a/m; {:try_start_b .. :try_end_11} :catch_29
    .catch Lcom/google/a/h; {:try_start_b .. :try_end_11} :catch_23

    :try_start_11
    new-instance v3, Lcom/google/a/a/a/a;

    invoke-direct {v3}, Lcom/google/a/a/a/a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/a/a/a/a;->a(Lcom/google/a/a/a;)Lcom/google/a/c/e;

    move-result-object p1
    :try_end_1a
    .catch Lcom/google/a/m; {:try_start_11 .. :try_end_1a} :catch_21
    .catch Lcom/google/a/h; {:try_start_11 .. :try_end_1a} :catch_1f

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2d

    :catch_1f
    move-exception p1

    goto :goto_25

    :catch_21
    move-exception p1

    goto :goto_2b

    :catch_23
    move-exception p1

    move-object v2, v1

    :goto_25
    move-object v3, v2

    move-object v2, p1

    move-object p1, v1

    goto :goto_2d

    :catch_29
    move-exception p1

    move-object v2, v1

    :goto_2b
    move-object v3, v2

    move-object v2, v1

    :goto_2d
    if-nez v1, :cond_48

    const/4 v1, 0x1

    :try_start_30
    invoke-virtual {v0, v1}, Lcom/google/a/a/b/a;->a(Z)Lcom/google/a/a/a;

    move-result-object v0

    iget-object v3, v0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    new-instance v1, Lcom/google/a/a/a/a;

    invoke-direct {v1}, Lcom/google/a/a/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/a/a/a/a;->a(Lcom/google/a/a/a;)Lcom/google/a/c/e;

    move-result-object v1
    :try_end_3f
    .catch Lcom/google/a/m; {:try_start_30 .. :try_end_3f} :catch_40
    .catch Lcom/google/a/h; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p2

    if-eqz p1, :cond_44

    throw p1

    :cond_44
    if-eqz v2, :cond_47

    throw v2

    :cond_47
    throw p2

    :cond_48
    :goto_48
    move-object v6, v3

    if-eqz p2, :cond_50

    sget-object p1, Lcom/google/a/e;->NEED_RESULT_POINT_CALLBACK:Lcom/google/a/e;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    new-instance p1, Lcom/google/a/r;

    iget-object v3, v1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/a/c/e;->a:[B

    iget v5, v1, Lcom/google/a/c/e;->b:I

    sget-object v7, Lcom/google/a/a;->AZTEC:Lcom/google/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    iget-object p2, v1, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz p2, :cond_6b

    sget-object v0, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_6b
    iget-object p2, v1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p2, :cond_74

    sget-object v0, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_74
    return-object p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method
