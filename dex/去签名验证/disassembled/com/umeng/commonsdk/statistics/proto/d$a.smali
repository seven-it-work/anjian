.class Lcom/umeng/commonsdk/statistics/proto/d$a;
.super Lcom/umeng/commonsdk/proguard/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bj<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>()V

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

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/d;)V
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

    if-eqz v1, :cond_6f

    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/au;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_94

    :cond_11
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    goto :goto_6b

    :pswitch_17
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_11

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    goto :goto_6b

    :pswitch_27
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_11

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    goto :goto_6b

    :pswitch_37
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v3, 0xd

    if-ne v1, v3, :cond_11

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->n()Lcom/umeng/commonsdk/proguard/aw;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_4d
    iget v3, v0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    if-ge v1, v3, :cond_65

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_65
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->o()V

    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    :goto_6b
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto :goto_3

    :cond_6f
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->h()Z

    move-result p1

    if-nez p1, :cond_90

    new-instance p1, Lcom/umeng/commonsdk/proguard/ba;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_90
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_37
        :pswitch_27
        :pswitch_17
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->m()Lcom/umeng/commonsdk/proguard/be;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/be;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->n()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    new-instance v0, Lcom/umeng/commonsdk/proguard/aw;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/aw;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/commonsdk/proguard/az;)V

    goto :goto_31

    :cond_50
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->e()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_56
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->o()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->p()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_78
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->d()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->b()V

    return-void
.end method
