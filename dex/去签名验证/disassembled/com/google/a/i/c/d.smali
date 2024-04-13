.class final Lcom/google/a/i/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x3

.field private static final c:I = 0x28

.field private static final d:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/i/c/b;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lcom/google/a/i/c/b;Z)I
    .registers 12

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/a/i/c/b;->c:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/google/a/i/c/b;->b:I

    :goto_7
    if-eqz p1, :cond_c

    iget v1, p0, Lcom/google/a/i/c/b;->b:I

    goto :goto_e

    :cond_c
    iget v1, p0, Lcom/google/a/i/c/b;->c:I

    :goto_e
    iget-object p0, p0, Lcom/google/a/i/c/b;->a:[[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v3, v0, :cond_44

    const/4 v5, -0x1

    move v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    :goto_1a
    const/4 v8, 0x5

    if-ge v4, v1, :cond_39

    if-eqz p1, :cond_24

    aget-object v9, p0, v3

    aget-byte v9, v9, v4

    goto :goto_28

    :cond_24
    aget-object v9, p0, v4

    aget-byte v9, v9, v3

    :goto_28
    if-ne v9, v7, :cond_2d

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_2d
    if-lt v5, v8, :cond_34

    add-int/lit8 v5, v5, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    :cond_34
    const/4 v5, 0x1

    move v7, v9

    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_39
    if-lt v5, v8, :cond_40

    add-int/lit8 v5, v5, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    :cond_40
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_44
    return v4
.end method

.method private static a(III)Z
    .registers 4

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_42

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mask pattern: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    mul-int p0, p2, p1

    rem-int/lit8 p0, p0, 0x3

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    goto :goto_24

    :pswitch_1d
    mul-int p2, p2, p1

    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    :goto_24
    and-int/2addr p0, v0

    goto :goto_3d

    :pswitch_26
    mul-int p2, p2, p1

    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    goto :goto_3d

    :pswitch_2e
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x3

    goto :goto_3a

    :pswitch_33
    add-int/2addr p2, p1

    rem-int/lit8 p0, p2, 0x3

    goto :goto_3d

    :pswitch_37
    rem-int/lit8 p0, p1, 0x3

    goto :goto_3d

    :goto_3a
    :pswitch_3a
    add-int/2addr p2, p1

    :pswitch_3b
    and-int/lit8 p0, p2, 0x1

    :goto_3d
    if-nez p0, :cond_40

    return v0

    :cond_40
    const/4 p0, 0x0

    return p0

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2e
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method static a([BII)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_a
    const/4 v1, 0x1

    if-ge p1, p2, :cond_15

    aget-byte v2, p0, p1

    if-ne v2, v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_15
    return v1
.end method

.method static a([[BIII)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_a
    const/4 v1, 0x1

    if-ge p2, p3, :cond_17

    aget-object v2, p0, p2

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_14

    return v0

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_17
    return v1
.end method

.method private static b(Lcom/google/a/i/c/b;)I
    .registers 12

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v1, p0, Lcom/google/a/i/c/b;->b:I

    iget p0, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    add-int/lit8 v5, p0, -0x1

    if-ge v3, v5, :cond_33

    aget-object v5, v0, v3

    move v6, v4

    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_2f

    aget-byte v7, v5, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v9, v5, v8

    if-ne v7, v9, :cond_2d

    add-int/lit8 v9, v3, 0x1

    aget-object v10, v0, v9

    aget-byte v4, v10, v4

    if-ne v7, v4, :cond_2d

    aget-object v4, v0, v9

    aget-byte v4, v4, v8

    if-ne v7, v4, :cond_2d

    add-int/lit8 v6, v6, 0x1

    :cond_2d
    move v4, v8

    goto :goto_11

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_9

    :cond_33
    mul-int/lit8 v4, v4, 0x3

    return v4
.end method

.method private static c(Lcom/google/a/i/c/b;)I
    .registers 11

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v1, p0, Lcom/google/a/i/c/b;->b:I

    iget p0, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, p0, :cond_a5

    move v5, v4

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_a0

    aget-object v6, v0, v3

    add-int/lit8 v7, v4, 0x6

    const/4 v8, 0x1

    if-ge v7, v1, :cond_50

    aget-byte v9, v6, v4

    if-ne v9, v8, :cond_50

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v6, v9

    if-nez v9, :cond_50

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_50

    add-int/lit8 v9, v4, 0x3

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_50

    add-int/lit8 v9, v4, 0x4

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_50

    add-int/lit8 v9, v4, 0x5

    aget-byte v9, v6, v9

    if-nez v9, :cond_50

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_50

    add-int/lit8 v7, v4, -0x4

    invoke-static {v6, v7, v4}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v7

    if-nez v7, :cond_4e

    add-int/lit8 v7, v4, 0x7

    add-int/lit8 v9, v4, 0xb

    invoke-static {v6, v7, v9}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v6

    if-eqz v6, :cond_50

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    :cond_50
    add-int/lit8 v6, v3, 0x6

    if-ge v6, p0, :cond_9c

    aget-object v7, v0, v3

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_9c

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-nez v7, :cond_9c

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_9c

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_9c

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_9c

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-nez v7, :cond_9c

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_9c

    add-int/lit8 v6, v3, -0x4

    invoke-static {v0, v4, v6, v3}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v6

    if-nez v6, :cond_9a

    add-int/lit8 v6, v3, 0x7

    add-int/lit8 v7, v3, 0xb

    invoke-static {v0, v4, v6, v7}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v6

    if-eqz v6, :cond_9c

    :cond_9a
    add-int/lit8 v5, v5, 0x1

    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_a0
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_9

    :cond_a5
    mul-int/lit8 v4, v4, 0x28

    return v4
.end method

.method private static d(Lcom/google/a/i/c/b;)I
    .registers 11

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v1, p0, Lcom/google/a/i/c/b;->b:I

    iget v2, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x1

    if-ge v4, v2, :cond_1f

    aget-object v7, v0, v4

    move v8, v5

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_1b

    aget-byte v9, v7, v5

    if-ne v9, v6, :cond_18

    add-int/lit8 v8, v8, 0x1

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_9

    :cond_1f
    iget v0, p0, Lcom/google/a/i/c/b;->c:I

    iget p0, p0, Lcom/google/a/i/c/b;->b:I

    mul-int v0, v0, p0

    shl-int/lit8 p0, v5, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method
