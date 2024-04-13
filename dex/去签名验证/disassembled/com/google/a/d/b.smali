.class public final Lcom/google/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/d/c/e;Lcom/google/a/d/c/k;II)Lcom/google/a/c/b;
    .registers 15

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->c()I

    move-result v1

    new-instance v2, Lcom/google/a/i/c/b;

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->e()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/a/i/c/b;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    const/4 v6, 0x1

    if-ge v4, v1, :cond_91

    iget v7, p1, Lcom/google/a/d/c/k;->e:I

    rem-int v7, v4, v7

    if-nez v7, :cond_39

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_23
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v9

    if-ge v7, v9, :cond_37

    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_30

    :cond_2f
    const/4 v9, 0x0

    :goto_30
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_37
    add-int/lit8 v5, v5, 0x1

    :cond_39
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3b
    if-ge v7, v0, :cond_72

    iget v9, p1, Lcom/google/a/d/c/k;->d:I

    rem-int v9, v7, v9

    if-nez v9, :cond_48

    invoke-virtual {v2, v8, v5, v6}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_48
    iget-object v9, p0, Lcom/google/a/d/c/e;->b:[B

    iget v10, p0, Lcom/google/a/d/c/e;->a:I

    mul-int v10, v10, v4

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    if-ne v9, v6, :cond_55

    const/4 v9, 0x1

    goto :goto_56

    :cond_55
    const/4 v9, 0x0

    :goto_56
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    iget v9, p1, Lcom/google/a/d/c/k;->d:I

    rem-int v9, v7, v9

    iget v10, p1, Lcom/google/a/d/c/k;->d:I

    sub-int/2addr v10, v6

    if-ne v9, v10, :cond_6f

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_69

    const/4 v9, 0x1

    goto :goto_6a

    :cond_69
    const/4 v9, 0x0

    :goto_6a
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_72
    add-int/lit8 v5, v5, 0x1

    iget v7, p1, Lcom/google/a/d/c/k;->e:I

    rem-int v7, v4, v7

    iget v8, p1, Lcom/google/a/d/c/k;->e:I

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_8e

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7f
    invoke-virtual {p1}, Lcom/google/a/d/c/k;->d()I

    move-result v9

    if-ge v7, v9, :cond_8c

    invoke-virtual {v2, v8, v5, v6}, Lcom/google/a/i/c/b;->a(IIZ)V

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    :cond_8c
    add-int/lit8 v5, v5, 0x1

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_91
    iget p0, v2, Lcom/google/a/i/c/b;->b:I

    iget p1, v2, Lcom/google/a/i/c/b;->c:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int v4, v0, p0

    div-int v5, v1, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, p0, v4

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    mul-int v5, p1, v4

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    if-lt p3, p1, :cond_ba

    if-ge p2, p0, :cond_b4

    goto :goto_ba

    :cond_b4
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p2, p3}, Lcom/google/a/c/b;-><init>(II)V

    goto :goto_c1

    :cond_ba
    :goto_ba
    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p0, p1}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c1
    invoke-virtual {v5}, Lcom/google/a/c/b;->a()V

    const/4 p2, 0x0

    :goto_c5
    if-ge p2, p1, :cond_dc

    move v7, v0

    const/4 p3, 0x0

    :goto_c9
    if-ge p3, p0, :cond_d8

    invoke-virtual {v2, p3, p2}, Lcom/google/a/i/c/b;->a(II)B

    move-result v8

    if-ne v8, v6, :cond_d4

    invoke-virtual {v5, v7, v1, v4, v4}, Lcom/google/a/c/b;->a(IIII)V

    :cond_d4
    add-int/lit8 p3, p3, 0x1

    add-int/2addr v7, v4

    goto :goto_c9

    :cond_d8
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v1, v4

    goto :goto_c5

    :cond_dc
    return-object v5
.end method

.method private static a(Lcom/google/a/i/c/b;II)Lcom/google/a/c/b;
    .registers 13

    iget v0, p0, Lcom/google/a/i/c/b;->b:I

    iget v1, p0, Lcom/google/a/i/c/b;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_2a

    if-ge p1, v0, :cond_24

    goto :goto_2a

    :cond_24
    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, p1, p2}, Lcom/google/a/c/b;-><init>(II)V

    goto :goto_31

    :cond_2a
    :goto_2a
    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, v0, v1}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_31
    invoke-virtual {v6}, Lcom/google/a/c/b;->a()V

    const/4 p1, 0x0

    :goto_35
    if-ge p1, v1, :cond_4d

    move v7, v2

    const/4 p2, 0x0

    :goto_39
    if-ge p2, v0, :cond_49

    invoke-virtual {p0, p2, p1}, Lcom/google/a/i/c/b;->a(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_45

    invoke-virtual {v6, v7, v3, v4, v4}, Lcom/google/a/c/b;->a(IIII)V

    :cond_45
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_39

    :cond_49
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_35

    :cond_4d
    return-object v6
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/d/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 9
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

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    sget-object v0, Lcom/google/a/a;->DATA_MATRIX:Lcom/google/a/a;

    if-eq p2, v0, :cond_22

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode DATA_MATRIX, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    if-ltz p3, :cond_76

    if-gez p4, :cond_27

    goto :goto_76

    :cond_27
    sget-object p2, Lcom/google/a/d/c/l;->FORCE_NONE:Lcom/google/a/d/c/l;

    const/4 v0, 0x0

    if-eqz p5, :cond_4f

    sget-object v1, Lcom/google/a/g;->DATA_MATRIX_SHAPE:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/c/l;

    if-eqz v1, :cond_37

    move-object p2, v1

    :cond_37
    sget-object v1, Lcom/google/a/g;->MIN_SIZE:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/f;

    if-eqz v1, :cond_42

    goto :goto_43

    :cond_42
    move-object v1, v0

    :goto_43
    sget-object v2, Lcom/google/a/g;->MAX_SIZE:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/a/f;

    if-eqz p5, :cond_50

    move-object v0, p5

    goto :goto_50

    :cond_4f
    move-object v1, v0

    :cond_50
    :goto_50
    invoke-static {p1, p2, v1, v0}, Lcom/google/a/d/c/j;->a(Ljava/lang/String;Lcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v2, 0x1

    invoke-static {p5, p2, v1, v0, v2}, Lcom/google/a/d/c/k;->a(ILcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;Z)Lcom/google/a/d/c/k;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/a/d/c/i;->a(Ljava/lang/String;Lcom/google/a/d/c/k;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Lcom/google/a/d/c/e;

    invoke-virtual {p2}, Lcom/google/a/d/c/k;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/a/d/c/k;->c()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lcom/google/a/d/c/e;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p5}, Lcom/google/a/d/c/e;->a()V

    invoke-static {p5, p2, p3, p4}, Lcom/google/a/d/b;->a(Lcom/google/a/d/c/e;Lcom/google/a/d/c/k;II)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    :cond_76
    :goto_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
