.class public final Lcom/google/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;"
        }
    .end annotation
.end field

.field private b:[Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/a/k;->a:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    sget-object v2, Lcom/google/a/e;->TRY_HARDER:Lcom/google/a/e;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-nez p1, :cond_15

    const/4 v3, 0x0

    goto :goto_1d

    :cond_15
    sget-object v3, Lcom/google/a/e;->POSSIBLE_FORMATS:Lcom/google/a/e;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    :goto_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_e5

    sget-object v5, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->UPC_E:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->EAN_8:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->CODABAR:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->CODE_39:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->CODE_93:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->CODE_128:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->ITF:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->RSS_14:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object v5, Lcom/google/a/a;->RSS_EXPANDED:Lcom/google/a/a;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    :cond_7c
    const/4 v0, 0x1

    :cond_7d
    if-eqz v0, :cond_89

    if-nez v2, :cond_89

    new-instance v1, Lcom/google/a/g/p;

    invoke-direct {v1, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_89
    sget-object v1, Lcom/google/a/a;->QR_CODE:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    new-instance v1, Lcom/google/a/i/a;

    invoke-direct {v1}, Lcom/google/a/i/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_99
    sget-object v1, Lcom/google/a/a;->DATA_MATRIX:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1}, Lcom/google/a/d/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a9
    sget-object v1, Lcom/google/a/a;->AZTEC:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    new-instance v1, Lcom/google/a/a/b;

    invoke-direct {v1}, Lcom/google/a/a/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b9
    sget-object v1, Lcom/google/a/a;->PDF_417:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    new-instance v1, Lcom/google/a/h/b;

    invoke-direct {v1}, Lcom/google/a/h/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c9
    sget-object v1, Lcom/google/a/a;->MAXICODE:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    new-instance v1, Lcom/google/a/e/a;

    invoke-direct {v1}, Lcom/google/a/e/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d9
    if-eqz v0, :cond_e5

    if-eqz v2, :cond_e5

    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e5
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_127

    if-nez v2, :cond_f5

    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f5
    new-instance v0, Lcom/google/a/i/a;

    invoke-direct {v0}, Lcom/google/a/i/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/a/d/a;

    invoke-direct {v0}, Lcom/google/a/d/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/a/a/b;

    invoke-direct {v0}, Lcom/google/a/a/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/a/h/b;

    invoke-direct {v0}, Lcom/google/a/h/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/a/e/a;

    invoke-direct {v0}, Lcom/google/a/e/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_127

    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_127
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/p;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/p;

    iput-object p1, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    return-void
.end method

.method private b(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    :try_start_c
    iget-object v4, p0, Lcom/google/a/k;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3
    :try_end_12
    .catch Lcom/google/a/q; {:try_start_c .. :try_end_12} :catch_13

    return-object v3

    :catch_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 3
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
            Lcom/google/a/m;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/a/p;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method
