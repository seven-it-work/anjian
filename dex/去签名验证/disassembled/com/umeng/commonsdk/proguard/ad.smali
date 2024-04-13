.class public Lcom/umeng/commonsdk/proguard/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/umeng/commonsdk/proguard/az;

.field private final b:Lcom/umeng/commonsdk/proguard/bm;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/proguard/at$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/at$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Lcom/umeng/commonsdk/proguard/bb;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/commonsdk/proguard/bm;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/bm;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/bb;->a(Lcom/umeng/commonsdk/proguard/bn;)Lcom/umeng/commonsdk/proguard/az;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    return-void
.end method

.method private varargs a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/commonsdk/proguard/ad;->j([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;

    move-result-object p2

    if-eqz p2, :cond_e0

    const/4 p3, 0x6

    if-eq p1, p3, :cond_c7

    const/16 p3, 0x8

    if-eq p1, p3, :cond_ae

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_99

    packed-switch p1, :pswitch_data_100

    packed-switch p1, :pswitch_data_10a

    goto/16 :goto_e0

    :pswitch_1b
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne p1, p4, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_ee
    .catchall {:try_start_0 .. :try_end_25} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :pswitch_30
    :try_start_30
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 p2, 0xa

    if-ne p1, p2, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_ee
    .catchall {:try_start_30 .. :try_end_40} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :pswitch_4b
    :try_start_4b
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/4 p2, 0x4

    if-ne p1, p2, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_ee
    .catchall {:try_start_4b .. :try_end_5a} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :pswitch_65
    :try_start_65
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/4 p2, 0x3

    if-ne p1, p2, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_74} :catch_ee
    .catchall {:try_start_65 .. :try_end_74} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :pswitch_7f
    :try_start_7f
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8e} :catch_ee
    .catchall {:try_start_7f .. :try_end_8e} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :cond_99
    :try_start_99
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne p1, p4, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->A()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a3} :catch_ee
    .catchall {:try_start_99 .. :try_end_a3} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :cond_ae
    :try_start_ae
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne p1, p3, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bc} :catch_ee
    .catchall {:try_start_ae .. :try_end_bc} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :cond_c7
    :try_start_c7
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne p1, p3, :cond_e0

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d5} :catch_ee
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_ec

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :cond_e0
    :goto_e0
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->B()V

    const/4 p1, 0x0

    return-object p1

    :catchall_ec
    move-exception p1

    goto :goto_f5

    :catch_ee
    move-exception p1

    :try_start_ef
    new-instance p2, Lcom/umeng/commonsdk/proguard/ag;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_ec

    :goto_f5
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    throw p1

    :pswitch_data_100
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_65
        :pswitch_4b
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0xa
        :pswitch_30
        :pswitch_1b
    .end packed-switch
.end method

.method private varargs j([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/bm;->a([B)V

    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lcom/umeng/commonsdk/proguard/ah;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x0

    :goto_e
    array-length v1, p3

    if-ge p2, v1, :cond_19

    add-int/lit8 v1, p2, 0x1

    aget-object p2, p3, p2

    aput-object p2, p1, v1

    move p2, v1

    goto :goto_e

    :cond_19
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    const/4 p2, 0x0

    move-object p3, p2

    :cond_20
    :goto_20
    array-length v1, p1

    if-ge v0, v1, :cond_5b

    iget-object p3, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p3}, Lcom/umeng/commonsdk/proguard/az;->l()Lcom/umeng/commonsdk/proguard/au;

    move-result-object p3

    iget-byte v1, p3, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-eqz v1, :cond_5a

    iget-short v1, p3, Lcom/umeng/commonsdk/proguard/au;->c:S

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/umeng/commonsdk/proguard/ah;->a()S

    move-result v2

    if-le v1, v2, :cond_38

    return-object p2

    :cond_38
    iget-short v1, p3, Lcom/umeng/commonsdk/proguard/au;->c:S

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/umeng/commonsdk/proguard/ah;->a()S

    move-result v2

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    iget-byte v2, p3, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto :goto_20

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    goto :goto_20

    :cond_5a
    return-object p2

    :cond_5b
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aa;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aa;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_f
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-void

    :catchall_d
    move-exception p1

    goto :goto_23

    :catch_f
    :try_start_f
    new-instance p1, Lcom/umeng/commonsdk/proguard/ag;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_d

    :goto_23
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aa;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {v0, p2}, Lcom/umeng/commonsdk/proguard/bm;->a([B)V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/aa;->read(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_15

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-void

    :catchall_15
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/commonsdk/proguard/aa;[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/commonsdk/proguard/ad;->j([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/aa;->read(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_18
    .catchall {:try_start_0 .. :try_end_b} :catchall_16

    :cond_b
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-void

    :catchall_16
    move-exception p1

    goto :goto_1f

    :catch_18
    move-exception p1

    :try_start_19
    new-instance p2, Lcom/umeng/commonsdk/proguard/ag;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    :goto_1f
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Byte;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Double;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Short;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Long;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0x64

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->a(B[BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Short;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/ad;->j([BLcom/umeng/commonsdk/proguard/ah;[Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->l()Lcom/umeng/commonsdk/proguard/au;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_30
    .catchall {:try_start_0 .. :try_end_17} :catchall_2e

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    return-object p1

    :cond_22
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->B()V

    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception p1

    goto :goto_37

    :catch_30
    move-exception p1

    :try_start_31
    new-instance p2, Lcom/umeng/commonsdk/proguard/ag;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_2e

    :goto_37
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:Lcom/umeng/commonsdk/proguard/bm;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/bm;->e()V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Lcom/umeng/commonsdk/proguard/az;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/az;->B()V

    throw p1
.end method
