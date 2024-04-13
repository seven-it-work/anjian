.class public final Lcom/google/a/g/a/a/a/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/c/a;

.field private final b:Lcom/google/a/g/a/a/a/m;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/g/a/a/a/m;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    return-void
.end method

.method public static a(Lcom/google/a/c/a;II)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p2, :cond_16

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method private a()Lcom/google/a/g/a/a/a/o;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->b:I

    sget v2, Lcom/google/a/g/a/a/a/m$a;->ALPHA$1376b33b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_118

    :goto_13
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v1, 0x5

    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v5, v5, Lcom/google/a/c/a;->b:I

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-gt v2, v5, :cond_40

    invoke-virtual {p0, v1, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0x10

    if-lt v2, v7, :cond_2d

    if-ge v2, v5, :cond_2d

    :goto_2b
    const/4 v1, 0x1

    goto :goto_41

    :cond_2d
    add-int/lit8 v2, v1, 0x6

    iget-object v8, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v8, v8, Lcom/google/a/c/a;->b:I

    if-gt v2, v8, :cond_40

    invoke-virtual {p0, v1, v6}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v5, :cond_40

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_40

    goto :goto_2b

    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {p0, v1, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0xf

    if-ne v2, v5, :cond_5a

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    const/16 v5, 0x24

    invoke-direct {v2, v1, v5}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v5, v2

    goto :goto_a9

    :cond_5a
    if-lt v2, v7, :cond_6a

    if-ge v2, v5, :cond_6a

    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v2, 0x30

    sub-int/2addr v2, v7

    int-to-char v2, v2

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_a9

    :cond_6a
    invoke-virtual {p0, v1, v6}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    const/16 v5, 0x20

    if-lt v2, v5, :cond_81

    const/16 v5, 0x3a

    if-ge v2, v5, :cond_81

    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x21

    int-to-char v2, v2

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_a9

    :cond_81
    packed-switch v2, :pswitch_data_142

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoding invalid alphanumeric value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_94
    const/16 v2, 0x2f

    goto :goto_a2

    :pswitch_97
    const/16 v2, 0x2e

    goto :goto_a2

    :pswitch_9a
    const/16 v2, 0x2d

    goto :goto_a2

    :pswitch_9d
    const/16 v2, 0x2c

    goto :goto_a2

    :pswitch_a0
    const/16 v2, 0x2a

    :goto_a2
    new-instance v5, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v5, v1, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    :goto_a9
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v2, v5, Lcom/google/a/g/a/a/a/q;->d:I

    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {v5}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_ca

    new-instance v1, Lcom/google/a/g/a/a/a/o;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v2, v2, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v2, v1, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    goto :goto_129

    :cond_ca
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget-char v2, v5, Lcom/google/a/g/a/a/a/n;->a:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :cond_d3
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v1}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v1

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/a/g/a/a/a/m;->a(I)V

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v2, Lcom/google/a/g/a/a/a/m$a;->NUMERIC$1376b33b:I

    :goto_e7
    iput v2, v1, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_112

    :cond_ea
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v1}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v1

    if-eqz v1, :cond_112

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-ge v1, v2, :cond_105

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v1, v7}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_10d

    :cond_105
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    :goto_10d
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v2, Lcom/google/a/g/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    goto :goto_e7

    :cond_112
    :goto_112
    new-instance v2, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v2}, Lcom/google/a/g/a/a/a/l;-><init>()V

    goto :goto_129

    :cond_118
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->b:I

    sget v2, Lcom/google/a/g/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    if-ne v1, v2, :cond_122

    const/4 v1, 0x1

    goto :goto_123

    :cond_122
    const/4 v1, 0x0

    :goto_123
    if-eqz v1, :cond_12c

    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->c()Lcom/google/a/g/a/a/a/l;

    move-result-object v2

    :goto_129
    iget-boolean v1, v2, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_131

    :cond_12c
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->b()Lcom/google/a/g/a/a/a/l;

    move-result-object v2

    goto :goto_129

    :goto_131
    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v5, v5, Lcom/google/a/g/a/a/a/m;->a:I

    if-eq v0, v5, :cond_138

    const/4 v3, 0x1

    :cond_138
    if-nez v3, :cond_13c

    if-eqz v1, :cond_13e

    :cond_13c
    if-eqz v1, :cond_0

    :cond_13e
    iget-object v0, v2, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    return-object v0

    nop

    :pswitch_data_142
    .packed-switch 0x3a
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
    .end packed-switch
.end method

.method private a(I)Z
    .registers 5

    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_14

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v0, v0, Lcom/google/a/c/a;->b:I

    if-gt p1, v0, :cond_12

    return v2

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    move v0, p1

    :goto_15
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v1, v0}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    iget-object p1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result p1

    return p1
.end method

.method private b()Lcom/google/a/g/a/a/a/l;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1a

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-gt v0, v1, :cond_18

    :goto_16
    const/4 v0, 0x1

    goto :goto_31

    :cond_18
    const/4 v0, 0x0

    goto :goto_31

    :cond_1a
    move v1, v0

    :goto_1b
    add-int/lit8 v2, v0, 0x3

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v2, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_16

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v0

    :goto_31
    const/4 v1, 0x4

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v0, 0x7

    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v5, v5, Lcom/google/a/c/a;->b:I

    const/16 v6, 0xa

    if-le v2, v5, :cond_5f

    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Lcom/google/a/g/a/a/a/p;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    invoke-direct {v0, v1, v6, v6}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    goto :goto_70

    :cond_52
    new-instance v1, Lcom/google/a/g/a/a/a/p;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v2, v0, v6}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    move-object v0, v1

    goto :goto_70

    :cond_5f
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v1, v0, 0xb

    rem-int/lit8 v0, v0, 0xb

    new-instance v5, Lcom/google/a/g/a/a/a/p;

    invoke-direct {v5, v2, v1, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    move-object v0, v5

    :goto_70
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v2, v0, Lcom/google/a/g/a/a/a/q;->d:I

    iput v2, v1, Lcom/google/a/g/a/a/a/m;->a:I

    iget v1, v0, Lcom/google/a/g/a/a/a/p;->a:I

    if-ne v1, v6, :cond_7b

    const/4 v3, 0x1

    :cond_7b
    if-eqz v3, :cond_ab

    invoke-virtual {v0}, Lcom/google/a/g/a/a/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    goto :goto_a5

    :cond_93
    new-instance v1, Lcom/google/a/g/a/a/a/o;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v2, v2, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/google/a/g/a/a/a/p;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    :goto_a5
    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    :cond_ab
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/google/a/g/a/a/a/p;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/a/g/a/a/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_cd

    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v4}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    :cond_cd
    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/a/g/a/a/a/p;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d6
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v2, v0, 0x1

    iget-object v5, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v5, v5, Lcom/google/a/c/a;->b:I

    if-le v2, v5, :cond_e3

    goto :goto_fb

    :cond_e3
    const/4 v2, 0x0

    :goto_e4
    if-ge v2, v1, :cond_fa

    add-int v5, v2, v0

    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-ge v5, v6, :cond_fa

    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v6, v5}, Lcom/google/a/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_f7

    goto :goto_fb

    :cond_f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    :cond_fa
    const/4 v3, 0x1

    :goto_fb
    if-eqz v3, :cond_108

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v2, Lcom/google/a/g/a/a/a/m$a;->ALPHA$1376b33b:I

    iput v2, v0, Lcom/google/a/g/a/a/a/m;->b:I

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    :cond_108
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0
.end method

.method private b(I)Lcom/google/a/g/a/a/a/p;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_27

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_1b

    new-instance p1, Lcom/google/a/g/a/a/a/p;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    invoke-direct {p1, v1, v0, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object p1

    :cond_1b
    new-instance v1, Lcom/google/a/g/a/a/a/p;

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, v2, p1, v0}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object v1

    :cond_27
    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    div-int/lit8 v1, p1, 0xb

    rem-int/lit8 p1, p1, 0xb

    new-instance v2, Lcom/google/a/g/a/a/a/p;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/a/g/a/a/a/p;-><init>(III)V

    return-object v2
.end method

.method private c()Lcom/google/a/g/a/a/a/l;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/16 v3, 0x74

    const/16 v4, 0x40

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x7

    const/4 v8, 0x5

    if-gt v1, v2, :cond_47

    invoke-virtual {p0, v0, v8}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v8, :cond_21

    const/16 v2, 0x10

    if-ge v1, v2, :cond_21

    :goto_1f
    const/4 v0, 0x1

    goto :goto_48

    :cond_21
    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-gt v1, v2, :cond_47

    invoke-virtual {p0, v0, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v4, :cond_32

    if-ge v1, v3, :cond_32

    goto :goto_1f

    :cond_32
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    if-gt v1, v2, :cond_47

    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0xe8

    if-lt v0, v1, :cond_47

    const/16 v1, 0xfd

    if-ge v0, v1, :cond_47

    goto :goto_1f

    :cond_47
    const/4 v0, 0x0

    :goto_48
    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {p0, v0, v8}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_62

    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v2, v1

    goto/16 :goto_e9

    :cond_62
    if-lt v1, v8, :cond_73

    if-ge v1, v2, :cond_73

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v8

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto/16 :goto_e9

    :cond_73
    invoke-virtual {p0, v0, v7}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x5a

    if-lt v1, v4, :cond_89

    if-ge v1, v2, :cond_89

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto/16 :goto_e9

    :cond_89
    if-lt v1, v2, :cond_98

    if-ge v1, v3, :cond_98

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x7

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_e9

    :cond_98
    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_158

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :pswitch_a4
    const/16 v1, 0x20

    goto :goto_e2

    :pswitch_a7
    const/16 v1, 0x5f

    goto :goto_e2

    :pswitch_aa
    const/16 v1, 0x3f

    goto :goto_e2

    :pswitch_ad
    const/16 v1, 0x3e

    goto :goto_e2

    :pswitch_b0
    const/16 v1, 0x3d

    goto :goto_e2

    :pswitch_b3
    const/16 v1, 0x3c

    goto :goto_e2

    :pswitch_b6
    const/16 v1, 0x3b

    goto :goto_e2

    :pswitch_b9
    const/16 v1, 0x3a

    goto :goto_e2

    :pswitch_bc
    const/16 v1, 0x2f

    goto :goto_e2

    :pswitch_bf
    const/16 v1, 0x2e

    goto :goto_e2

    :pswitch_c2
    const/16 v1, 0x2d

    goto :goto_e2

    :pswitch_c5
    const/16 v1, 0x2c

    goto :goto_e2

    :pswitch_c8
    const/16 v1, 0x2b

    goto :goto_e2

    :pswitch_cb
    const/16 v1, 0x2a

    goto :goto_e2

    :pswitch_ce
    const/16 v1, 0x29

    goto :goto_e2

    :pswitch_d1
    const/16 v1, 0x28

    goto :goto_e2

    :pswitch_d4
    const/16 v1, 0x27

    goto :goto_e2

    :pswitch_d7
    const/16 v1, 0x26

    goto :goto_e2

    :pswitch_da
    const/16 v1, 0x25

    goto :goto_e2

    :pswitch_dd
    const/16 v1, 0x22

    goto :goto_e2

    :pswitch_e0
    const/16 v1, 0x21

    :goto_e2
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    :goto_e9
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v2, Lcom/google/a/g/a/a/a/q;->d:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {v2}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v6}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    :cond_10a
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget-char v1, v2, Lcom/google/a/g/a/a/a/n;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_113
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v1, Lcom/google/a/g/a/a/a/m$a;->NUMERIC$1376b33b:I

    :goto_127
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_152

    :cond_12a
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v0, v8

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-ge v0, v1, :cond_145

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v8}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_14d

    :cond_145
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    :goto_14d
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v1, Lcom/google/a/g/a/a/a/m$a;->ALPHA$1376b33b:I

    goto :goto_127

    :cond_152
    :goto_152
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0

    :pswitch_data_158
    .packed-switch 0xe8
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
    .end packed-switch
.end method

.method private c(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_17

    const/16 v0, 0x10

    if-ge v1, v0, :cond_17

    return v3

    :cond_17
    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_20

    return v2

    :cond_20
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_2e

    const/16 v1, 0x74

    if-ge v0, v1, :cond_2e

    return v3

    :cond_2e
    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_37

    return v2

    :cond_37
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xe8

    if-lt p1, v0, :cond_46

    const/16 v0, 0xfd

    if-ge p1, v0, :cond_46

    return v3

    :cond_46
    return v2
.end method

.method private d()Lcom/google/a/g/a/a/a/l;
    .registers 8

    :goto_0
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v2, v2, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-gt v1, v2, :cond_2e

    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v5, :cond_1b

    if-ge v1, v2, :cond_1b

    :goto_19
    const/4 v0, 0x1

    goto :goto_2f

    :cond_1b
    add-int/lit8 v1, v0, 0x6

    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-gt v1, v6, :cond_2e

    invoke-virtual {p0, v0, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    if-lt v0, v2, :cond_2e

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {p0, v0, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_48

    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v2, v1

    goto :goto_97

    :cond_48
    if-lt v1, v5, :cond_58

    if-ge v1, v2, :cond_58

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v5

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_97

    :cond_58
    invoke-virtual {p0, v0, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_6f

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_6f

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v1, 0x21

    int-to-char v1, v1

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_97

    :cond_6f
    packed-switch v1, :pswitch_data_106

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Decoding invalid alphanumeric value: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_82
    const/16 v1, 0x2f

    goto :goto_90

    :pswitch_85
    const/16 v1, 0x2e

    goto :goto_90

    :pswitch_88
    const/16 v1, 0x2d

    goto :goto_90

    :pswitch_8b
    const/16 v1, 0x2c

    goto :goto_90

    :pswitch_8e
    const/16 v1, 0x2a

    :goto_90
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v2, v0, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    :goto_97
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v2, Lcom/google/a/g/a/a/a/q;->d:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {v2}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_b8

    new-instance v0, Lcom/google/a/g/a/a/a/o;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v1, v1, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v1, v0, v3}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-object v1

    :cond_b8
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget-char v1, v2, Lcom/google/a/g/a/a/a/n;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c1
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/a/g/a/a/a/m;->a(I)V

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v1, Lcom/google/a/g/a/a/a/m$a;->NUMERIC$1376b33b:I

    :goto_d5
    iput v1, v0, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_100

    :cond_d8
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-ge v0, v1, :cond_f3

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {v0, v5}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_fb

    :cond_f3
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    iput v1, v0, Lcom/google/a/g/a/a/a/m;->a:I

    :goto_fb
    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v1, Lcom/google/a/g/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    goto :goto_d5

    :cond_100
    :goto_100
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    return-object v0

    :pswitch_data_106
    .packed-switch 0x3a
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
    .end packed-switch
.end method

.method private d(I)Lcom/google/a/g/a/a/a/n;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_12

    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_12
    if-lt v1, v0, :cond_21

    if-ge v1, v2, :cond_21

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_21
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_38

    if-ge v1, v3, :cond_38

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_38
    if-lt v1, v3, :cond_47

    const/16 v2, 0x74

    if-ge v1, v2, :cond_47

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_47
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p1

    throw p1

    :pswitch_55
    const/16 v1, 0x20

    goto :goto_93

    :pswitch_58
    const/16 v1, 0x5f

    goto :goto_93

    :pswitch_5b
    const/16 v1, 0x3f

    goto :goto_93

    :pswitch_5e
    const/16 v1, 0x3e

    goto :goto_93

    :pswitch_61
    const/16 v1, 0x3d

    goto :goto_93

    :pswitch_64
    const/16 v1, 0x3c

    goto :goto_93

    :pswitch_67
    const/16 v1, 0x3b

    goto :goto_93

    :pswitch_6a
    const/16 v1, 0x3a

    goto :goto_93

    :pswitch_6d
    const/16 v1, 0x2f

    goto :goto_93

    :pswitch_70
    const/16 v1, 0x2e

    goto :goto_93

    :pswitch_73
    const/16 v1, 0x2d

    goto :goto_93

    :pswitch_76
    const/16 v1, 0x2c

    goto :goto_93

    :pswitch_79
    const/16 v1, 0x2b

    goto :goto_93

    :pswitch_7c
    const/16 v1, 0x2a

    goto :goto_93

    :pswitch_7f
    const/16 v1, 0x29

    goto :goto_93

    :pswitch_82
    const/16 v1, 0x28

    goto :goto_93

    :pswitch_85
    const/16 v1, 0x27

    goto :goto_93

    :pswitch_88
    const/16 v1, 0x26

    goto :goto_93

    :pswitch_8b
    const/16 v1, 0x25

    goto :goto_93

    :pswitch_8e
    const/16 v1, 0x22

    goto :goto_93

    :pswitch_91
    const/16 v1, 0x21

    :goto_93
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :pswitch_data_9a
    .packed-switch 0xe8
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method private e(I)Z
    .registers 7

    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_17

    if-ge v1, v4, :cond_17

    return v3

    :cond_17
    add-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    if-le v0, v1, :cond_20

    return v2

    :cond_20
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p1

    if-lt p1, v4, :cond_2c

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_2c

    return v3

    :cond_2c
    return v2
.end method

.method private f(I)Lcom/google/a/g/a/a/a/n;
    .registers 5

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_12

    new-instance v1, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_12
    if-lt v1, v0, :cond_21

    if-ge v1, v2, :cond_21

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_21
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_38

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_38

    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x21

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_38
    packed-switch v1, :pswitch_data_60

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Decoding invalid alphanumeric value: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4b
    const/16 v1, 0x2f

    goto :goto_59

    :pswitch_4e
    const/16 v1, 0x2e

    goto :goto_59

    :pswitch_51
    const/16 v1, 0x2d

    goto :goto_59

    :pswitch_54
    const/16 v1, 0x2c

    goto :goto_59

    :pswitch_57
    const/16 v1, 0x2a

    :goto_59
    new-instance v2, Lcom/google/a/g/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    return-object v2

    :pswitch_data_60
    .packed-switch 0x3a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method private g(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x5

    if-ge v0, v1, :cond_30

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v3, v3, Lcom/google/a/c/a;->b:I

    if-ge v1, v3, :cond_30

    const/4 v3, 0x2

    if-ne v0, v3, :cond_24

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_24
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v3, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method private h(I)Z
    .registers 5

    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    :goto_a
    if-ge p1, v0, :cond_18

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v1, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return v2

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method private i(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v1, v1, Lcom/google/a/c/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x4

    if-ge v0, v1, :cond_22

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v3, v3, Lcom/google/a/c/a;->b:I

    if-ge v1, v3, :cond_22

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-virtual {v3, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_22
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final a(II)I
    .registers 4

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    invoke-static {v0, p1, p2}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result p1

    return p1
.end method

.method final a(ILjava/lang/String;)Lcom/google/a/g/a/a/a/o;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iput p1, p2, Lcom/google/a/g/a/a/a/m;->a:I

    :cond_11
    iget-object p1, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p1, p1, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->b:I

    sget v0, Lcom/google/a/g/a/a/a/m$a;->ALPHA$1376b33b:I

    const/4 v2, 0x1

    if-ne p2, v0, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    if-eqz p2, :cond_128

    :goto_23
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/lit8 v0, p2, 0x5

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v3, v3, Lcom/google/a/c/a;->b:I

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-gt v0, v3, :cond_50

    invoke-virtual {p0, p2, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v5, :cond_3d

    if-ge v0, v3, :cond_3d

    :goto_3b
    const/4 p2, 0x1

    goto :goto_51

    :cond_3d
    add-int/lit8 v0, p2, 0x6

    iget-object v6, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v6, v6, Lcom/google/a/c/a;->b:I

    if-gt v0, v6, :cond_50

    invoke-virtual {p0, p2, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p2

    if-lt p2, v3, :cond_50

    const/16 v0, 0x3f

    if-ge p2, v0, :cond_50

    goto :goto_3b

    :cond_50
    const/4 p2, 0x0

    :goto_51
    if-eqz p2, :cond_e3

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {p0, p2, v5}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_6a

    new-instance v0, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x5

    const/16 v3, 0x24

    invoke-direct {v0, p2, v3}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    move-object v3, v0

    goto :goto_b9

    :cond_6a
    if-lt v0, v5, :cond_7a

    if-ge v0, v3, :cond_7a

    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x5

    add-int/lit8 v0, v0, 0x30

    sub-int/2addr v0, v5

    int-to-char v0, v0

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_b9

    :cond_7a
    invoke-virtual {p0, p2, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0x20

    if-lt v0, v3, :cond_91

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_91

    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v0, v0, 0x21

    int-to-char v0, v0

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    goto :goto_b9

    :cond_91
    packed-switch v0, :pswitch_data_17a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Decoding invalid alphanumeric value: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a4
    const/16 v0, 0x2f

    goto :goto_b2

    :pswitch_a7
    const/16 v0, 0x2e

    goto :goto_b2

    :pswitch_aa
    const/16 v0, 0x2d

    goto :goto_b2

    :pswitch_ad
    const/16 v0, 0x2c

    goto :goto_b2

    :pswitch_b0
    const/16 v0, 0x2a

    :goto_b2
    new-instance v3, Lcom/google/a/g/a/a/a/n;

    add-int/lit8 p2, p2, 0x6

    invoke-direct {v3, p2, v0}, Lcom/google/a/g/a/a/a/n;-><init>(IC)V

    :goto_b9
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v3, Lcom/google/a/g/a/a/a/q;->d:I

    iput v0, p2, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-virtual {v3}, Lcom/google/a/g/a/a/a/n;->a()Z

    move-result p2

    if-eqz p2, :cond_da

    new-instance p2, Lcom/google/a/g/a/a/a/o;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0, p2, v2}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    goto :goto_139

    :cond_da
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    iget-char v0, v3, Lcom/google/a/g/a/a/a/n;->a:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_23

    :cond_e3
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, p2}, Lcom/google/a/g/a/a/a/s;->h(I)Z

    move-result p2

    if-eqz p2, :cond_fa

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/google/a/g/a/a/a/m;->a(I)V

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v0, Lcom/google/a/g/a/a/a/m$a;->NUMERIC$1376b33b:I

    :goto_f7
    iput v0, p2, Lcom/google/a/g/a/a/a/m;->b:I

    goto :goto_122

    :cond_fa
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    invoke-direct {p0, p2}, Lcom/google/a/g/a/a/a/s;->g(I)Z

    move-result p2

    if-eqz p2, :cond_122

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr p2, v5

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v0, v0, Lcom/google/a/c/a;->b:I

    if-ge p2, v0, :cond_115

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    invoke-virtual {p2, v5}, Lcom/google/a/g/a/a/a/m;->a(I)V

    goto :goto_11d

    :cond_115
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->a:Lcom/google/a/c/a;

    iget v0, v0, Lcom/google/a/c/a;->b:I

    iput v0, p2, Lcom/google/a/g/a/a/a/m;->a:I

    :goto_11d
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    sget v0, Lcom/google/a/g/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    goto :goto_f7

    :cond_122
    :goto_122
    new-instance v0, Lcom/google/a/g/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/g/a/a/a/l;-><init>()V

    goto :goto_139

    :cond_128
    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->b:I

    sget v0, Lcom/google/a/g/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    if-ne p2, v0, :cond_132

    const/4 p2, 0x1

    goto :goto_133

    :cond_132
    const/4 p2, 0x0

    :goto_133
    if-eqz p2, :cond_13c

    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->c()Lcom/google/a/g/a/a/a/l;

    move-result-object v0

    :goto_139
    iget-boolean p2, v0, Lcom/google/a/g/a/a/a/l;->b:Z

    goto :goto_141

    :cond_13c
    invoke-direct {p0}, Lcom/google/a/g/a/a/a/s;->b()Lcom/google/a/g/a/a/a/l;

    move-result-object v0

    goto :goto_139

    :goto_141
    iget-object v3, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v3, v3, Lcom/google/a/g/a/a/a/m;->a:I

    if-eq p1, v3, :cond_148

    goto :goto_149

    :cond_148
    const/4 v2, 0x0

    :goto_149
    if-nez v2, :cond_14d

    if-eqz p2, :cond_14f

    :cond_14d
    if-eqz p2, :cond_11

    :cond_14f
    iget-object p1, v0, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    if-eqz p1, :cond_169

    iget-boolean p2, p1, Lcom/google/a/g/a/a/a/o;->c:Z

    if-eqz p2, :cond_169

    new-instance p2, Lcom/google/a/g/a/a/a/o;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget v0, v0, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/a/g/a/a/a/o;->b:I

    invoke-direct {p2, v0, v1, p1}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;I)V

    return-object p2

    :cond_169
    new-instance p1, Lcom/google/a/g/a/a/a/o;

    iget-object p2, p0, Lcom/google/a/g/a/a/a/s;->b:Lcom/google/a/g/a/a/a/m;

    iget p2, p2, Lcom/google/a/g/a/a/a/m;->a:I

    iget-object v0, p0, Lcom/google/a/g/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/a/g/a/a/a/o;-><init>(ILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_17a
    .packed-switch 0x3a
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
    .end packed-switch
.end method

.method final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/google/a/g/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/a/g/a/a/a/o;

    move-result-object v1

    iget-object v2, v1, Lcom/google/a/g/a/a/a/o;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/a/g/a/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-boolean v2, v1, Lcom/google/a/g/a/a/a/o;->c:Z

    if-eqz v2, :cond_1c

    iget v2, v1, Lcom/google/a/g/a/a/a/o;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v0

    :goto_1d
    iget v3, v1, Lcom/google/a/g/a/a/a/q;->d:I

    if-eq p2, v3, :cond_25

    iget p2, v1, Lcom/google/a/g/a/a/a/q;->d:I

    move-object v1, v2

    goto :goto_2

    :cond_25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
