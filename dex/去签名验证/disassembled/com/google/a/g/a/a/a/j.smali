.class public abstract Lcom/google/a/g/a/a/a/j;
.super Ljava/lang/Object;


# instance fields
.field final b:Lcom/google/a/c/a;

.field final c:Lcom/google/a/g/a/a/a/s;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    new-instance v0, Lcom/google/a/g/a/a/a/s;

    invoke-direct {v0, p1}, Lcom/google/a/g/a/a/a/s;-><init>(Lcom/google/a/c/a;)V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    return-void
.end method

.method private static a(Lcom/google/a/c/a;)Lcom/google/a/g/a/a/a/j;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/google/a/g/a/a/a/g;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/g;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :cond_d
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v0, Lcom/google/a/g/a/a/a/k;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/k;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :cond_1a
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v1

    packed-switch v1, :pswitch_data_aa

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown decoder: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_42
    new-instance v0, Lcom/google/a/g/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/b;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :pswitch_48
    new-instance v0, Lcom/google/a/g/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/a;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :pswitch_4e
    new-instance v0, Lcom/google/a/g/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/d;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :pswitch_54
    new-instance v0, Lcom/google/a/g/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/c;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :pswitch_5a
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_64
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6e
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_78
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_82
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_8c
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_96
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_a0
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x4
        :pswitch_48
        :pswitch_42
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0xc
        :pswitch_54
        :pswitch_4e
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x38
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_82
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
    .end packed-switch
.end method

.method private b()Lcom/google/a/c/a;
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    return-object v0
.end method

.method private c()Lcom/google/a/g/a/a/a/s;
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation
.end method
