.class public Lcom/umeng/commonsdk/proguard/bc;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/commonsdk/proguard/bb;)Lcom/umeng/commonsdk/proguard/bb;
    .registers 4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_d

    new-instance p0, Lcom/umeng/commonsdk/proguard/at$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at$a;-><init>()V

    return-object p0

    :cond_d
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1d

    new-instance p0, Lcom/umeng/commonsdk/proguard/at$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at$a;-><init>()V

    return-object p0

    :cond_1d
    return-object p1
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/umeng/commonsdk/proguard/bc;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/az;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget v0, Lcom/umeng/commonsdk/proguard/bc;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/az;BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    if-gtz p2, :cond_a

    new-instance p0, Lcom/umeng/commonsdk/proguard/ag;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8c

    :pswitch_e
    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->p()Lcom/umeng/commonsdk/proguard/av;

    move-result-object p1

    :goto_13
    iget v1, p1, Lcom/umeng/commonsdk/proguard/av;->b:I

    if-ge v0, v1, :cond_21

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/av;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->q()V

    return-void

    :pswitch_25
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->r()Lcom/umeng/commonsdk/proguard/bd;

    move-result-object p1

    :goto_29
    iget v1, p1, Lcom/umeng/commonsdk/proguard/bd;->b:I

    if-ge v0, v1, :cond_37

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/bd;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_37
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->s()V

    return-void

    :pswitch_3b
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->n()Lcom/umeng/commonsdk/proguard/aw;

    move-result-object p1

    :goto_3f
    iget v1, p1, Lcom/umeng/commonsdk/proguard/aw;->c:I

    if-ge v0, v1, :cond_52

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/aw;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/aw;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_52
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->o()V

    return-void

    :pswitch_56
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    :goto_59
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->l()Lcom/umeng/commonsdk/proguard/au;

    move-result-object p1

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-eqz v0, :cond_6c

    iget-byte p1, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;BI)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto :goto_59

    :cond_6c
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->k()V

    return-void

    :pswitch_70
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->A()Ljava/nio/ByteBuffer;

    return-void

    :pswitch_74
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->x()J

    return-void

    :pswitch_78
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->w()I

    return-void

    :pswitch_7c
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->v()S

    return-void

    :pswitch_80
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->y()D

    return-void

    :pswitch_84
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->u()B

    return-void

    :pswitch_88
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->t()Z

    return-void

    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_e
        :pswitch_7c
        :pswitch_e
        :pswitch_78
        :pswitch_e
        :pswitch_74
        :pswitch_70
        :pswitch_56
        :pswitch_3b
        :pswitch_25
        :pswitch_f
    .end packed-switch
.end method
