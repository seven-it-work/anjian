.class public final Lcom/b/a/ab;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-ge v2, v0, :cond_4f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_33

    if-lt v7, v5, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_33
    :goto_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected char %#04x at %d in header name: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    aput-object p0, v4, v3

    invoke-static {v0, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    if-nez p1, :cond_59

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v0, :cond_90

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_6c

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6e

    :cond_6c
    if-lt v7, v5, :cond_8d

    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    aput-object p0, v8, v3

    aput-object p1, v8, v4

    invoke-static {v5, v8}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_90
    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/aa;
    .registers 2

    new-instance v0, Lcom/b/a/aa;

    invoke-direct {v0, p0}, Lcom/b/a/aa;-><init>(Lcom/b/a/ab;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/ab;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_23
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_26
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;
    .registers 3

    invoke-static {p1, p2}, Lcom/b/a/ab;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    move-result-object p1

    return-object p1
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;
    .registers 4

    iget-object v0, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/b/a/ab;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;
    .registers 3

    invoke-static {p1, p2}, Lcom/b/a/ab;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-object p0
.end method
