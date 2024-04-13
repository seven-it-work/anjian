.class final Lcom/b/a/a/e/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:[Lcom/b/a/a/e/c;

.field d:I

.field e:I

.field f:I

.field private final g:Lcom/b/b/f;

.field private final h:Z

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lcom/b/b/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/e/f;-><init>(Lcom/b/b/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/b/f;B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/b/a/a/e/f;->i:I

    const/16 p2, 0x8

    new-array p2, p2, [Lcom/b/a/a/e/c;

    iput-object p2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    iget-object p2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length p2, p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/b/a/a/e/f;->d:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/b/a/a/e/f;->e:I

    iput p2, p0, Lcom/b/a/a/e/f;->f:I

    const/16 p2, 0x1000

    iput p2, p0, Lcom/b/a/a/e/f;->a:I

    iput p2, p0, Lcom/b/a/a/e/f;->b:I

    iput-boolean v0, p0, Lcom/b/a/a/e/f;->h:Z

    iput-object p1, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/a/e/f;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/e/f;->e:I

    iput v0, p0, Lcom/b/a/a/e/f;->f:I

    return-void
.end method

.method private a(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    or-int/2addr p1, p3

    :goto_5
    invoke-virtual {p2, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    return-void

    :cond_9
    iget-object v0, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    :cond_1f
    iget-object p2, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    goto :goto_5
.end method

.method private a(Lcom/b/a/a/e/c;)V
    .registers 8

    iget v0, p1, Lcom/b/a/a/e/c;->i:I

    iget v1, p0, Lcom/b/a/a/e/f;->b:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lcom/b/a/a/e/f;->a()V

    return-void

    :cond_a
    iget v1, p0, Lcom/b/a/a/e/f;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/b/a/a/e/f;->b:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/b/a/a/e/f;->b(I)I

    iget v1, p0, Lcom/b/a/a/e/f;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_38

    iget-object v1, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/b/a/a/e/c;

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v4, v4

    iget-object v5, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/e/f;->d:I

    iput-object v1, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    :cond_38
    iget v1, p0, Lcom/b/a/a/e/f;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/b/a/a/e/f;->d:I

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    aput-object p1, v2, v1

    iget p1, p0, Lcom/b/a/a/e/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/b/a/a/e/f;->e:I

    iget p1, p0, Lcom/b/a/a/e/f;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/e/f;->f:I

    return-void
.end method

.method private a(Lcom/b/b/i;)V
    .registers 5

    iget-boolean v0, p0, Lcom/b/a/a/e/f;->h:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/b/a/a/e/ag;->a()Lcom/b/a/a/e/ag;

    invoke-static {p1}, Lcom/b/a/a/e/ag;->a(Lcom/b/b/i;)I

    move-result v0

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v2

    if-ge v0, v2, :cond_31

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    invoke-static {}, Lcom/b/a/a/e/ag;->a()Lcom/b/a/a/e/ag;

    invoke-static {p1, v0}, Lcom/b/a/a/e/ag;->a(Lcom/b/b/i;Lcom/b/b/g;)V

    invoke-virtual {v0}, Lcom/b/b/f;->k()Lcom/b/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    const/16 v2, 0x80

    :goto_28
    invoke-direct {p0, v0, v1, v2}, Lcom/b/a/a/e/f;->a(III)V

    iget-object v0, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a(Lcom/b/b/i;)Lcom/b/b/f;

    return-void

    :cond_31
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    const/4 v2, 0x0

    goto :goto_28
.end method

.method private b(I)I
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_51

    iget-object v1, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lcom/b/a/a/e/f;->d:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/b/a/a/e/c;->i:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/b/a/a/e/f;->f:I

    iget-object v3, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/b/a/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/a/e/f;->f:I

    iget v2, p0, Lcom/b/a/a/e/f;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/e/f;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_2b
    iget-object p1, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    iget v1, p0, Lcom/b/a/a/e/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    iget v3, p0, Lcom/b/a/a/e/f;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/b/a/a/e/f;->e:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    iget v1, p0, Lcom/b/a/a/e/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/b/a/a/e/f;->d:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lcom/b/a/a/e/f;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/e/f;->d:I

    :cond_51
    return v0
.end method


# virtual methods
.method final a(I)V
    .registers 3

    iput p1, p0, Lcom/b/a/a/e/f;->a:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/b/a/a/e/f;->b:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    iget v0, p0, Lcom/b/a/a/e/f;->b:I

    if-ge p1, v0, :cond_19

    iget v0, p0, Lcom/b/a/a/e/f;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/e/f;->i:I

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/e/f;->j:Z

    iput p1, p0, Lcom/b/a/a/e/f;->b:I

    iget p1, p0, Lcom/b/a/a/e/f;->b:I

    iget v0, p0, Lcom/b/a/a/e/f;->f:I

    if-ge p1, v0, :cond_34

    iget p1, p0, Lcom/b/a/a/e/f;->b:I

    if-nez p1, :cond_2c

    invoke-direct {p0}, Lcom/b/a/a/e/f;->a()V

    return-void

    :cond_2c
    iget p1, p0, Lcom/b/a/a/e/f;->f:I

    iget v0, p0, Lcom/b/a/a/e/f;->b:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/b/a/a/e/f;->b(I)I

    :cond_34
    return-void
.end method

.method final a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/e/f;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/b/a/a/e/f;->i:I

    iget v2, p0, Lcom/b/a/a/e/f;->b:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_14

    iget v0, p0, Lcom/b/a/a/e/f;->i:I

    invoke-direct {p0, v0, v4, v3}, Lcom/b/a/a/e/f;->a(III)V

    :cond_14
    iput-boolean v1, p0, Lcom/b/a/a/e/f;->j:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/b/a/a/e/f;->i:I

    iget v0, p0, Lcom/b/a/a/e/f;->b:I

    invoke-direct {p0, v0, v4, v3}, Lcom/b/a/a/e/f;->a(III)V

    :cond_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_ee

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/e/c;

    iget-object v4, v3, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    invoke-virtual {v4}, Lcom/b/b/i;->f()Lcom/b/b/i;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    sget-object v6, Lcom/b/a/a/e/d;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_71

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_6e

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6e

    sget-object v9, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-static {v9, v5}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    move v9, v6

    goto :goto_73

    :cond_5c
    sget-object v9, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-static {v9, v5}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_73

    :cond_6e
    move v9, v6

    const/4 v6, -0x1

    goto :goto_73

    :cond_71
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_73
    if-ne v6, v7, :cond_aa

    iget v10, p0, Lcom/b/a/a/e/f;->d:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    array-length v8, v8

    :goto_7b
    if-ge v10, v8, :cond_aa

    iget-object v11, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    invoke-static {v11, v4}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    iget-object v11, p0, Lcom/b/a/a/e/f;->c:[Lcom/b/a/a/e/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-static {v11, v5}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9d

    iget v6, p0, Lcom/b/a/a/e/f;->d:I

    sub-int/2addr v10, v6

    sget-object v6, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_aa

    :cond_9d
    if-ne v9, v7, :cond_a7

    iget v9, p0, Lcom/b/a/a/e/f;->d:I

    sub-int v9, v10, v9

    sget-object v11, Lcom/b/a/a/e/d;->a:[Lcom/b/a/a/e/c;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    :cond_aa
    :goto_aa
    if-eq v6, v7, :cond_b4

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-direct {p0, v6, v3, v4}, Lcom/b/a/a/e/f;->a(III)V

    goto :goto_ea

    :cond_b4
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c7

    iget-object v7, p0, Lcom/b/a/a/e/f;->g:Lcom/b/b/f;

    invoke-virtual {v7, v6}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    invoke-direct {p0, v4}, Lcom/b/a/a/e/f;->a(Lcom/b/b/i;)V

    :goto_c0
    invoke-direct {p0, v5}, Lcom/b/a/a/e/f;->a(Lcom/b/b/i;)V

    invoke-direct {p0, v3}, Lcom/b/a/a/e/f;->a(Lcom/b/a/a/e/c;)V

    goto :goto_ea

    :cond_c7
    sget-object v7, Lcom/b/a/a/e/c;->a:Lcom/b/b/i;

    invoke-virtual {v7}, Lcom/b/b/i;->g()I

    move-result v8

    invoke-virtual {v4, v1, v7, v1, v8}, Lcom/b/b/i;->a(ILcom/b/b/i;II)Z

    move-result v7

    if-eqz v7, :cond_e4

    sget-object v7, Lcom/b/a/a/e/c;->f:Lcom/b/b/i;

    invoke-virtual {v7, v4}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e4

    const/16 v3, 0xf

    invoke-direct {p0, v9, v3, v1}, Lcom/b/a/a/e/f;->a(III)V

    invoke-direct {p0, v5}, Lcom/b/a/a/e/f;->a(Lcom/b/b/i;)V

    goto :goto_ea

    :cond_e4
    const/16 v4, 0x3f

    invoke-direct {p0, v9, v4, v6}, Lcom/b/a/a/e/f;->a(III)V

    goto :goto_c0

    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    :cond_ee
    return-void
.end method
