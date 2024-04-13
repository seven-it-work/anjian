.class public final Lcom/google/a/c/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/c/b/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/c/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/a/c/b/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/b/d;->a:Lcom/google/a/c/b/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    new-instance v1, Lcom/google/a/c/b/b;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Lcom/google/a/c/b/b;
    .registers 11

    iget-object v0, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_48

    iget-object v0, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/b/b;

    iget-object v1, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1e
    if-gt v1, p1, :cond_48

    new-instance v3, Lcom/google/a/c/b/b;

    iget-object v4, p0, Lcom/google/a/c/b/d;->a:Lcom/google/a/c/b/a;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    iget-object v6, p0, Lcom/google/a/c/b/d;->a:Lcom/google/a/c/b/a;

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcom/google/a/c/b/d;->a:Lcom/google/a/c/b/a;

    iget v8, v8, Lcom/google/a/c/b/a;->m:I

    add-int/2addr v7, v8

    iget-object v6, v6, Lcom/google/a/c/b/a;->i:[I

    aget v6, v6, v7

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    invoke-virtual {v0, v3}, Lcom/google/a/c/b/b;->b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v0

    iget-object v3, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_48
    iget-object v0, p0, Lcom/google/a/c/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/a/c/b/b;

    return-object p1
.end method


# virtual methods
.method public final a([II)V
    .registers 9

    if-nez p2, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gtz v0, :cond_16

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    invoke-direct {p0, p2}, Lcom/google/a/c/b/d;->a(I)Lcom/google/a/c/b/b;

    move-result-object v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/google/a/c/b/b;

    iget-object v5, p0, Lcom/google/a/c/b/d;->a:Lcom/google/a/c/b/a;

    invoke-direct {v4, v5, v2}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    const/4 v2, 0x1

    invoke-virtual {v4, p2, v2}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/a/c/b/b;->c(Lcom/google/a/c/b/b;)[Lcom/google/a/c/b/b;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/a/c/b/b;->a:[I

    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_37
    if-ge v2, p2, :cond_40

    add-int v4, v0, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_40
    add-int/2addr v0, p2

    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
