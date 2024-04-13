.class Lcom/umeng/commonsdk/statistics/proto/c$c;
.super Lcom/umeng/commonsdk/proguard/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bk<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/az;)V

    goto :goto_15

    :cond_34
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_43
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4d
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/az;)V

    goto :goto_66

    :cond_76
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    new-instance v0, Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2, v1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget v5, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    if-ge v3, v5, :cond_35

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v6}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    invoke-virtual {v6, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object v7, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_35
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    invoke-virtual {p1, v4}, Lcom/umeng/commonsdk/proguard/bf;->b(I)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    new-instance v4, Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/umeng/commonsdk/proguard/av;-><init>(BI)V

    new-instance v2, Ljava/util/ArrayList;

    iget v5, v4, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :goto_55
    iget v2, v4, Lcom/umeng/commonsdk/proguard/av;->b:I

    if-ge v1, v2, :cond_69

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_69
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    :cond_6c
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    :cond_7b
    return-void
.end method
