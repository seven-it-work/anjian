.class public final Lcom/google/a/c/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/c/b/a;


# direct methods
.method public constructor <init>(Lcom/google/a/c/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    return-void
.end method

.method private a(Lcom/google/a/c/b/b;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    new-array v0, v1, [I

    invoke-virtual {p1, v1}, Lcom/google/a/c/b/b;->a(I)I

    move-result p1

    aput p1, v0, v2

    return-object v0

    :cond_11
    new-array v3, v0, [I

    :goto_13
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget v4, v4, Lcom/google/a/c/b/a;->l:I

    if-ge v1, v4, :cond_2e

    if-ge v2, v0, :cond_2e

    invoke-virtual {p1, v1}, Lcom/google/a/c/b/b;->b(I)I

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v4, v1}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2e
    if-eq v2, v0, :cond_38

    new-instance p1, Lcom/google/a/c/b/e;

    const-string v0, "Error locator degree does not match number of roots"

    invoke-direct {p1, v0}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    return-object v3
.end method

.method private a(Lcom/google/a/c/b/b;[I)[I
    .registers 12

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_55

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_12
    if-ge v5, v0, :cond_30

    if-eq v3, v5, :cond_2d

    iget-object v7, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v8, p2, v5

    invoke-virtual {v7, v8, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_25

    or-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_25
    and-int/lit8 v7, v7, -0x2

    :goto_27
    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v8, v6, v7}, Lcom/google/a/c/b/a;->c(II)I

    move-result v6

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_30
    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {p1, v4}, Lcom/google/a/c/b/b;->b(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v8, v6}, Lcom/google/a/c/b/a;->b(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lcom/google/a/c/b/a;->c(II)I

    move-result v5

    aput v5, v1, v3

    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget v5, v5, Lcom/google/a/c/b/a;->m:I

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v6, v1, v3

    invoke-virtual {v5, v6, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v4

    aput v4, v1, v3

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_55
    return-object v1
.end method

.method private a(Lcom/google/a/c/b/b;Lcom/google/a/c/b/b;I)[Lcom/google/a/c/b/b;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_e

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :cond_e
    iget-object v0, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v0, v0, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    iget-object v2, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v2, v2, Lcom/google/a/c/b/a;->k:Lcom/google/a/c/b/b;

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :goto_19
    iget-object v3, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    div-int/lit8 v5, p3, 0x2

    if-lt v3, v5, :cond_9e

    invoke-virtual {p1}, Lcom/google/a/c/b/b;->a()Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "r_{i-1} was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    iget-object v3, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v3, v3, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    iget-object v4, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/google/a/c/b/b;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v5, v4}, Lcom/google/a/c/b/a;->b(I)I

    move-result v4

    :goto_42
    iget-object v5, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    iget-object v6, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v1

    if-lt v5, v6, :cond_7c

    invoke-virtual {p2}, Lcom/google/a/c/b/b;->a()Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    iget-object v6, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v7, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    invoke-virtual {p2, v7}, Lcom/google/a/c/b/b;->a(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/google/a/c/b/a;->c(II)I

    move-result v6

    iget-object v7, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v7, v5, v6}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v3

    invoke-virtual {p1, v5, v6}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object p2

    goto :goto_42

    :cond_7c
    invoke-virtual {v3, v2}, Lcom/google/a/c/b/b;->b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v0

    iget-object v3, p2, Lcom/google/a/c/b/b;->a:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    iget-object v4, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_96

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_96
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_19

    :cond_9e
    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Lcom/google/a/c/b/b;->a(I)I

    move-result p3

    if-nez p3, :cond_ad

    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "sigmaTilde(0) was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ad
    iget-object v0, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v0, p3}, Lcom/google/a/c/b/a;->b(I)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object p1

    new-array p3, v4, [Lcom/google/a/c/b/b;

    aput-object v0, p3, p2

    aput-object p1, p3, v1

    return-object p3
.end method


# virtual methods
.method public final a([II)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/c/b/e;
        }
    .end annotation

    new-instance v0, Lcom/google/a/c/b/b;

    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1, p1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_d
    if-ge v4, p2, :cond_27

    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget v7, v6, Lcom/google/a/c/b/a;->m:I

    add-int/2addr v7, v4

    iget-object v6, v6, Lcom/google/a/c/b/a;->i:[I

    aget v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/a/c/b/b;->b(I)I

    move-result v6

    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v7, v4

    aput v6, v1, v7

    if-eqz v6, :cond_24

    const/4 v5, 0x0

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_27
    if-eqz v5, :cond_2a

    return-void

    :cond_2a
    new-instance v0, Lcom/google/a/c/b/b;

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-direct {v0, v4, v1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v1, p2, v3}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v1

    iget-object v4, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v3

    iget-object v5, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_42

    goto :goto_45

    :cond_42
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_45
    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v4, v4, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    iget-object v5, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v5, v5, Lcom/google/a/c/b/a;->k:Lcom/google/a/c/b/b;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_50
    iget-object v6, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    const/4 v7, 0x2

    div-int/lit8 v8, p2, 0x2

    if-lt v6, v8, :cond_d5

    invoke-virtual {v0}, Lcom/google/a/c/b/b;->a()Z

    move-result v6

    if-eqz v6, :cond_67

    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "r_{i-1} was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    iget-object v6, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v6, v6, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    iget-object v7, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    invoke-virtual {v0, v7}, Lcom/google/a/c/b/b;->a(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v8, v7}, Lcom/google/a/c/b/a;->b(I)I

    move-result v7

    :goto_79
    iget-object v8, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    iget-object v9, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v9, v9

    sub-int/2addr v9, v3

    if-lt v8, v9, :cond_b3

    invoke-virtual {v1}, Lcom/google/a/c/b/b;->a()Z

    move-result v8

    if-nez v8, :cond_b3

    iget-object v8, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    iget-object v9, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v9, v9

    sub-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    iget-object v10, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    invoke-virtual {v1, v10}, Lcom/google/a/c/b/b;->a(I)I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/google/a/c/b/a;->c(II)I

    move-result v9

    iget-object v10, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v10, v8, v9}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v6

    invoke-virtual {v0, v8, v9}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v1

    goto :goto_79

    :cond_b3
    invoke-virtual {v6, v5}, Lcom/google/a/c/b/b;->b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v4

    iget-object v6, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    iget-object v7, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    if-lt v6, v7, :cond_cd

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cd
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_50

    :cond_d5
    invoke-virtual {v5, v2}, Lcom/google/a/c/b/b;->a(I)I

    move-result p2

    if-nez p2, :cond_e3

    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "sigmaTilde(0) was zero"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e3
    iget-object v1, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    invoke-virtual {v1, p2}, Lcom/google/a/c/b/a;->b(I)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/a/c/b/b;->c(I)Lcom/google/a/c/b/b;

    move-result-object p2

    new-array v0, v7, [Lcom/google/a/c/b/b;

    aput-object v1, v0, v2

    aput-object p2, v0, v3

    aget-object p2, v0, v2

    aget-object v0, v0, v3

    invoke-direct {p0, p2}, Lcom/google/a/c/b/c;->a(Lcom/google/a/c/b/b;)[I

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/google/a/c/b/c;->a(Lcom/google/a/c/b/b;[I)[I

    move-result-object v0

    :goto_103
    array-length v1, p2

    if-ge v2, v1, :cond_128

    array-length v1, p1

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/google/a/c/b/c;->a:Lcom/google/a/c/b/a;

    aget v5, p2, v2

    invoke-virtual {v4, v5}, Lcom/google/a/c/b/a;->a(I)I

    move-result v4

    sub-int/2addr v1, v4

    if-gez v1, :cond_11b

    new-instance p1, Lcom/google/a/c/b/e;

    const-string p2, "Bad error location"

    invoke-direct {p1, p2}, Lcom/google/a/c/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11b
    aget v4, p1, v1

    aget v5, v0, v2

    invoke-static {v4, v5}, Lcom/google/a/c/b/a;->b(II)I

    move-result v4

    aput v4, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_128
    return-void
.end method
