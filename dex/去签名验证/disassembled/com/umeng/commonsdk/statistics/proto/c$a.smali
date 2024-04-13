.class Lcom/umeng/commonsdk/statistics/proto/c$a;
.super Lcom/umeng/commonsdk/proguard/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bj<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    :goto_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->l()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-eqz v1, :cond_8f

    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/au;->c:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_96

    :cond_12
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    goto/16 :goto_8a

    :pswitch_19
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_12

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    goto :goto_8a

    :pswitch_29
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v4, 0xf

    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->p()Lcom/umeng/commonsdk/proguard/av;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v4, v0, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :goto_3c
    iget v1, v0, Lcom/umeng/commonsdk/proguard/av;->b:I

    if-ge v2, v1, :cond_50

    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_50
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->q()V

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    goto :goto_8a

    :pswitch_57
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->n()Lcom/umeng/commonsdk/proguard/aw;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :goto_6c
    iget v1, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    if-ge v2, v1, :cond_84

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_84
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->o()V

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    :goto_8a
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto/16 :goto_3

    :cond_8f
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    return-void

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_57
        :pswitch_29
        :pswitch_19
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->o()Lcom/umeng/commonsdk/proguard/be;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/be;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/16 v1, 0xc

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->p()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    new-instance v0, Lcom/umeng/commonsdk/proguard/aw;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/aw;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/az;)V

    goto :goto_31

    :cond_50
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->e()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_56
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_91

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->q()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    new-instance v0, Lcom/umeng/commonsdk/proguard/av;

    iget-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/av;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/av;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/az;)V

    goto :goto_7b

    :cond_8b
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->f()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_91
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_aa

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->r()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_aa
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->d()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->b()V

    return-void
.end method
