.class Lcom/umeng/commonsdk/stateless/b$a;
.super Lcom/umeng/commonsdk/proguard/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bj<",
        "Lcom/umeng/commonsdk/stateless/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/stateless/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b$a;-><init>()V

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

    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V
    .registers 8
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

    if-eqz v1, :cond_ae

    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/au;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_110

    :cond_15
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    goto/16 :goto_a9

    :pswitch_1c
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    goto/16 :goto_a9

    :pswitch_2b
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->i(Z)V

    goto/16 :goto_a9

    :pswitch_3a
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->h(Z)V

    goto :goto_a9

    :pswitch_48
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->g(Z)V

    goto :goto_a9

    :pswitch_56
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    goto :goto_a9

    :pswitch_64
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    goto :goto_a9

    :pswitch_72
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    goto :goto_a9

    :pswitch_80
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->c(Z)V

    goto :goto_a9

    :pswitch_8e
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->b(Z)V

    goto :goto_a9

    :pswitch_9c
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->a(Z)V

    :goto_a9
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto/16 :goto_3

    :cond_ae
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->m()Z

    move-result p1

    if-nez p1, :cond_cf

    new-instance p1, Lcom/umeng/commonsdk/proguard/ba;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cf
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->p()Z

    move-result p1

    if-nez p1, :cond_ed

    new-instance p1, Lcom/umeng/commonsdk/proguard/ba;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ed
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->s()Z

    move-result p1

    if-nez p1, :cond_10b

    new-instance p1, Lcom/umeng/commonsdk/proguard/ba;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10b
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    return-void

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_64
        :pswitch_56
        :pswitch_48
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->H()Lcom/umeng/commonsdk/proguard/be;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/be;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->I()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_1d
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->J()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_30
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->K()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_43
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->L()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->M()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->N()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->O()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_83
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->P()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_96
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_a9

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->Q()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_a9
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->R()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget p2, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_be
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->d()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->b()V

    return-void
.end method
