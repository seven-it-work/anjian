.class public final Lcom/google/a/g/q;
.super Lcom/google/a/g/r;


# instance fields
.field private final a:[Lcom/google/a/g/y;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    :cond_7
    sget-object v0, Lcom/google/a/e;->POSSIBLE_FORMATS:Lcom/google/a/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_55

    sget-object v1, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Lcom/google/a/g/i;

    invoke-direct {v1}, Lcom/google/a/g/i;-><init>()V

    :goto_23
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_27
    sget-object v1, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lcom/google/a/g/t;

    invoke-direct {v1}, Lcom/google/a/g/t;-><init>()V

    goto :goto_23

    :cond_35
    :goto_35
    sget-object v1, Lcom/google/a/a;->EAN_8:Lcom/google/a/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Lcom/google/a/g/k;

    invoke-direct {v1}, Lcom/google/a/g/k;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_45
    sget-object v1, Lcom/google/a/a;->UPC_E:Lcom/google/a/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    new-instance p1, Lcom/google/a/g/aa;

    invoke-direct {p1}, Lcom/google/a/g/aa;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_55
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_73

    new-instance p1, Lcom/google/a/g/i;

    invoke-direct {p1}, Lcom/google/a/g/i;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/k;

    invoke-direct {p1}, Lcom/google/a/g/k;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/aa;

    invoke-direct {p1}, Lcom/google/a/g/aa;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_73
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/g/y;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/g/y;

    iput-object p1, p0, Lcom/google/a/g/q;->a:[Lcom/google/a/g/y;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/g/q;->a:[Lcom/google/a/g/y;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_5e

    aget-object v5, v1, v4

    :try_start_d
    invoke-virtual {v5, p1, p2, v0, p3}, Lcom/google/a/g/y;->a(ILcom/google/a/c/a;[ILjava/util/Map;)Lcom/google/a/r;

    move-result-object v5

    iget-object v6, v5, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v7, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_24

    iget-object v6, v5, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-nez p3, :cond_29

    const/4 v7, 0x0

    goto :goto_31

    :cond_29
    sget-object v7, Lcom/google/a/e;->POSSIBLE_FORMATS:Lcom/google/a/e;

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    :goto_31
    if-eqz v7, :cond_3e

    sget-object v9, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v7, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v7, 0x1

    :goto_3f
    if-eqz v6, :cond_5a

    if-eqz v7, :cond_5a

    new-instance v6, Lcom/google/a/r;

    iget-object v7, v5, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/google/a/r;->b:[B

    iget-object v9, v5, Lcom/google/a/r;->d:[Lcom/google/a/t;

    sget-object v10, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    iget-object v5, v5, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-virtual {v6, v5}, Lcom/google/a/r;->a(Ljava/util/Map;)V
    :try_end_59
    .catch Lcom/google/a/q; {:try_start_d .. :try_end_59} :catch_5b

    return-object v6

    :cond_5a
    return-object v5

    :catch_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_5e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/g/q;->a:[Lcom/google/a/g/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/a/p;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
