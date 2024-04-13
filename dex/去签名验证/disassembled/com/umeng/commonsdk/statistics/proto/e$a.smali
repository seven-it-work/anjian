.class Lcom/umeng/commonsdk/statistics/proto/e$a;
.super Lcom/umeng/commonsdk/proguard/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bj<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e$a;-><init>()V

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

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .registers 7
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

    if-eqz v1, :cond_48

    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/au;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_6e

    :cond_13
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    goto :goto_44

    :pswitch_19
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->c(Z)V

    goto :goto_44

    :pswitch_27
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    goto :goto_44

    :pswitch_37
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->a(Z)V

    :goto_44
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto :goto_3

    :cond_48
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->g()Z

    move-result p1

    if-nez p1, :cond_69

    new-instance p1, Lcom/umeng/commonsdk/proguard/ba;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_27
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

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->l()Lcom/umeng/commonsdk/proguard/be;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/be;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->m()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_23
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->n()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/az;->a(J)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->o()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_45
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->d()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->b()V

    return-void
.end method
