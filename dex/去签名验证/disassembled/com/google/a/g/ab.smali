.class public final Lcom/google/a/g/ab;
.super Lcom/google/a/g/z;


# static fields
.field private static final a:I = 0x33


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

    sget-object v0, Lcom/google/a/a;->UPC_E:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode UPC_E, but got "

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
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

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

    if-nez v0, :cond_44

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
    invoke-static {p1}, Lcom/google/a/g/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/g/y;->b(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_35
    .catch Lcom/google/a/h; {:try_start_2d .. :try_end_35} :catch_9d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5c

    if-eq v1, v3, :cond_5c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number system must be 0 or 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    sget-object v5, Lcom/google/a/g/aa;->a:[[I

    aget-object v1, v5, v1

    aget v1, v1, v4

    const/16 v4, 0x33

    new-array v4, v4, [Z

    sget-object v5, Lcom/google/a/g/y;->b:[I

    invoke-static {v4, v0, v5, v3}, Lcom/google/a/g/ab;->a([ZI[IZ)I

    move-result v5

    add-int/2addr v5, v0

    move v6, v5

    const/4 v5, 0x1

    :goto_78
    const/4 v7, 0x6

    if-gt v5, v7, :cond_97

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    sub-int/2addr v7, v5

    shr-int v7, v1, v7

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_8b

    add-int/lit8 v8, v8, 0xa

    :cond_8b
    sget-object v7, Lcom/google/a/g/y;->f:[[I

    aget-object v7, v7, v8

    invoke-static {v4, v6, v7, v0}, Lcom/google/a/g/ab;->a([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_97
    sget-object p1, Lcom/google/a/g/y;->d:[I

    invoke-static {v4, v6, p1, v0}, Lcom/google/a/g/ab;->a([ZI[IZ)I

    return-object v4

    :catch_9d
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_a4
    .packed-switch 0x7
        :pswitch_2d
        :pswitch_17
    .end packed-switch
.end method
