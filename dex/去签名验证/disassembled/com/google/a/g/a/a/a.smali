.class final Lcom/google/a/g/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/a/c/a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;)",
            "Lcom/google/a/c/a;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/a/b;

    iget-object v2, v2, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-nez v2, :cond_18

    add-int/lit8 v0, v0, -0x1

    :cond_18
    mul-int/lit8 v0, v0, 0xc

    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    iget-object v3, v3, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    iget v3, v3, Lcom/google/a/g/a/b;->a:I

    const/16 v4, 0xb

    const/16 v0, 0xb

    const/4 v5, 0x0

    :goto_2f
    if-ltz v0, :cond_3e

    shl-int v6, v1, v0

    and-int/2addr v6, v3

    if-eqz v6, :cond_39

    invoke-virtual {v2, v5}, Lcom/google/a/c/a;->b(I)V

    :cond_39
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    :cond_3e
    const/4 v0, 0x1

    :goto_3f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/g/a/a/b;

    iget-object v6, v3, Lcom/google/a/g/a/a/b;->a:Lcom/google/a/g/a/b;

    iget v6, v6, Lcom/google/a/g/a/b;->a:I

    move v7, v5

    const/16 v5, 0xb

    :goto_52
    if-ltz v5, :cond_61

    shl-int v8, v1, v5

    and-int/2addr v8, v6

    if-eqz v8, :cond_5c

    invoke-virtual {v2, v7}, Lcom/google/a/c/a;->b(I)V

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_52

    :cond_61
    iget-object v5, v3, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    if-eqz v5, :cond_7a

    iget-object v3, v3, Lcom/google/a/g/a/a/b;->b:Lcom/google/a/g/a/b;

    iget v3, v3, Lcom/google/a/g/a/b;->a:I

    const/16 v5, 0xb

    :goto_6b
    if-ltz v5, :cond_7a

    shl-int v6, v1, v5

    and-int/2addr v6, v3

    if-eqz v6, :cond_75

    invoke-virtual {v2, v7}, Lcom/google/a/c/a;->b(I)V

    :cond_75
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_6b

    :cond_7a
    move v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_7e
    return-object v2
.end method
