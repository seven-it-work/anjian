.class public final Lcom/google/a/g/l;
.super Lcom/google/a/g/z;


# static fields
.field private static final a:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/g/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/a;->EAN_8:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode EAN_8, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/google/a/g/z;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_94

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested contents should be 8 digits long, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_17
    :try_start_17
    invoke-static {p1}, Lcom/google/a/g/y;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catch Lcom/google/a/h; {:try_start_17 .. :try_end_25} :catch_25

    :catch_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2d
    :try_start_2d
    invoke-static {p1}, Lcom/google/a/g/y;->b(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_31
    .catch Lcom/google/a/h; {:try_start_2d .. :try_end_31} :catch_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_40
    const/16 v0, 0x43

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/a/g/y;->b:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/a/g/l;->a([ZI[IZ)I

    move-result v1

    add-int/2addr v1, v3

    move v4, v1

    const/4 v1, 0x0

    :goto_4f
    const/4 v5, 0x3

    const/16 v6, 0xa

    if-gt v1, v5, :cond_68

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    sget-object v6, Lcom/google/a/g/y;->e:[[I

    aget-object v5, v6, v5

    invoke-static {v0, v4, v5, v3}, Lcom/google/a/g/l;->a([ZI[IZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_68
    sget-object v1, Lcom/google/a/g/y;->c:[I

    invoke-static {v0, v4, v1, v3}, Lcom/google/a/g/l;->a([ZI[IZ)I

    move-result v1

    add-int/2addr v4, v1

    const/4 v1, 0x4

    :goto_70
    const/4 v3, 0x7

    if-gt v1, v3, :cond_87

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    sget-object v5, Lcom/google/a/g/y;->e:[[I

    aget-object v3, v5, v3

    invoke-static {v0, v4, v3, v2}, Lcom/google/a/g/l;->a([ZI[IZ)I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_87
    sget-object p1, Lcom/google/a/g/y;->b:[I

    invoke-static {v0, v4, p1, v2}, Lcom/google/a/g/l;->a([ZI[IZ)I

    return-object v0

    :catch_8d
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_2d
        :pswitch_17
    .end packed-switch
.end method
