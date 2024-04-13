.class public final Lcom/google/a/b/a/e;
.super Lcom/google/a/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p0, :cond_b

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p1, :cond_10

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz p2, :cond_15

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/d;
    .registers 23

    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/e;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BIZCARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "N:"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "X:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_1f

    move-object v1, v4

    goto :goto_36

    :cond_1f
    if-nez v4, :cond_22

    goto :goto_36

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_36
    const-string v4, "T:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    const-string v4, "C:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    const-string v4, "A:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v4, "B:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "M:"

    invoke-static {v5, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "F:"

    invoke-static {v6, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "E:"

    invoke-static {v7, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_73

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    if-eqz v5, :cond_78

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    if-eqz v6, :cond_7d

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_85

    :goto_83
    move-object v9, v2

    goto :goto_8e

    :cond_85
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_83

    :goto_8e
    const/4 v10, 0x0

    invoke-static {v0}, Lcom/google/a/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v21}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 24

    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/e;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BIZCARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "N:"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "X:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_1f

    move-object v1, v4

    goto :goto_36

    :cond_1f
    if-nez v4, :cond_22

    goto :goto_36

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_36
    const-string v4, "T:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    const-string v4, "C:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    const-string v4, "A:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v4, "B:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "M:"

    invoke-static {v5, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "F:"

    invoke-static {v6, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "E:"

    invoke-static {v7, v0, v3}, Lcom/google/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_73

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    if-eqz v5, :cond_78

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    if-eqz v6, :cond_7d

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_85

    :goto_83
    move-object v9, v2

    goto :goto_8e

    :cond_85
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_83

    :goto_8e
    const/4 v10, 0x0

    invoke-static {v0}, Lcom/google/a/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v21}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method
