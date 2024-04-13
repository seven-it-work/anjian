.class public final Lcom/google/a/g/p;
.super Lcom/google/a/g/r;


# instance fields
.field private final a:[Lcom/google/a/g/r;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
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

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    sget-object v0, Lcom/google/a/e;->POSSIBLE_FORMATS:Lcom/google/a/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_f
    if-eqz p1, :cond_1b

    sget-object v1, Lcom/google/a/e;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/a/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_bb

    sget-object v3, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lcom/google/a/a;->EAN_8:Lcom/google/a/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lcom/google/a/a;->UPC_E:Lcom/google/a/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_43
    new-instance v3, Lcom/google/a/g/q;

    invoke-direct {v3, p1}, Lcom/google/a/g/q;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4b
    sget-object v3, Lcom/google/a/a;->CODE_39:Lcom/google/a/a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v3, Lcom/google/a/g/e;

    invoke-direct {v3, v1}, Lcom/google/a/g/e;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5b
    sget-object v1, Lcom/google/a/a;->CODE_93:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance v1, Lcom/google/a/g/g;

    invoke-direct {v1}, Lcom/google/a/g/g;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6b
    sget-object v1, Lcom/google/a/a;->CODE_128:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    new-instance v1, Lcom/google/a/g/c;

    invoke-direct {v1}, Lcom/google/a/g/c;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7b
    sget-object v1, Lcom/google/a/a;->ITF:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    new-instance v1, Lcom/google/a/g/n;

    invoke-direct {v1}, Lcom/google/a/g/n;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8b
    sget-object v1, Lcom/google/a/a;->CODABAR:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    new-instance v1, Lcom/google/a/g/a;

    invoke-direct {v1}, Lcom/google/a/g/a;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9b
    sget-object v1, Lcom/google/a/a;->RSS_14:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    new-instance v1, Lcom/google/a/g/a/e;

    invoke-direct {v1}, Lcom/google/a/g/a/e;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_ab
    sget-object v1, Lcom/google/a/a;->RSS_EXPANDED:Lcom/google/a/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    new-instance v0, Lcom/google/a/g/a/a/d;

    invoke-direct {v0}, Lcom/google/a/g/a/a/d;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_bb
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_101

    new-instance v0, Lcom/google/a/g/q;

    invoke-direct {v0, p1}, Lcom/google/a/g/q;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/e;

    invoke-direct {p1}, Lcom/google/a/g/e;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/a;

    invoke-direct {p1}, Lcom/google/a/g/a;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/g;

    invoke-direct {p1}, Lcom/google/a/g/g;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/c;

    invoke-direct {p1}, Lcom/google/a/g/c;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/n;

    invoke-direct {p1}, Lcom/google/a/g/n;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/a/e;

    invoke-direct {p1}, Lcom/google/a/g/a/e;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/a/g/a/a/d;

    invoke-direct {p1}, Lcom/google/a/g/a/a/d;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_101
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/g/r;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/g/r;

    iput-object p1, p0, Lcom/google/a/g/p;->a:[Lcom/google/a/g/r;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 8
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

    iget-object v0, p0, Lcom/google/a/g/p;->a:[Lcom/google/a/g/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    :try_start_8
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/a/g/r;->a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3
    :try_end_c
    .catch Lcom/google/a/q; {:try_start_8 .. :try_end_c} :catch_d

    return-object v3

    :catch_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/g/p;->a:[Lcom/google/a/g/r;

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
