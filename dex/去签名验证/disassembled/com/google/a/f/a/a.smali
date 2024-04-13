.class public final Lcom/google/a/f/a/a;
.super Lcom/google/a/i/a;

# interfaces
.implements Lcom/google/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/f/a/a$a;
    }
.end annotation


# static fields
.field private static final b:[Lcom/google/a/r;

.field private static final c:[Lcom/google/a/t;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/a/r;

    sput-object v1, Lcom/google/a/f/a/a;->b:[Lcom/google/a/r;

    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/f/a/a;->c:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/i/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/r;

    iget-object v1, v1, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v3, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_21

    return-object p0

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/r;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v5, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4c
    new-instance p0, Lcom/google/a/f/a/a$a;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/a/f/a/a$a;-><init>(Lcom/google/a/f/a/a$1;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/r;

    iget-object v7, v6, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/google/a/r;->b:[B

    array-length v7, v7

    add-int/2addr v4, v7

    iget-object v7, v6, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v8, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    iget-object v6, v6, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v7, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    add-int/2addr v5, v7

    goto :goto_8d

    :cond_9c
    new-array v3, v4, [B

    new-array v4, v5, [B

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/a/r;

    iget-object v9, v8, Lcom/google/a/r;->b:[B

    iget-object v10, v8, Lcom/google/a/r;->b:[B

    array-length v10, v10

    invoke-static {v9, v2, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v8, Lcom/google/a/r;->b:[B

    array-length v9, v9

    add-int/2addr v6, v9

    iget-object v9, v8, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v10, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    iget-object v8, v8, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v9, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    array-length v10, v9

    invoke-static {v9, v2, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_d6

    :cond_e9
    new-instance v1, Lcom/google/a/r;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/google/a/f/a/a;->c:[Lcom/google/a/t;

    sget-object v6, Lcom/google/a/a;->QR_CODE:Lcom/google/a/a;

    invoke-direct {v1, p0, v3, v2, v6}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-lez v5, :cond_105

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-virtual {v1, v2, p0}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/a/f/a/a;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            ")[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/a/f/a/a/a;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/a/f/a/a/a;-><init>(Lcom/google/a/c/b;)V

    invoke-virtual {v1}, Lcom/google/a/f/a/a/a;->a()[Lcom/google/a/c/g;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_6f

    aget-object v3, p1, v2

    :try_start_18
    iget-object v4, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    iget-object v5, v3, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v4

    iget-object v3, v3, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    iget-object v5, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    instance-of v5, v5, Lcom/google/a/i/a/i;

    if-eqz v5, :cond_30

    iget-object v5, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    check-cast v5, Lcom/google/a/i/a/i;

    invoke-virtual {v5, v3}, Lcom/google/a/i/a/i;->a([Lcom/google/a/t;)V

    :cond_30
    new-instance v5, Lcom/google/a/r;

    iget-object v6, v4, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/a/c/e;->a:[B

    sget-object v8, Lcom/google/a/a;->QR_CODE:Lcom/google/a/a;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    iget-object v3, v4, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz v3, :cond_44

    sget-object v6, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-virtual {v5, v6, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_44
    iget-object v3, v4, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz v3, :cond_4d

    sget-object v6, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    invoke-virtual {v5, v6, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_4d
    invoke-virtual {v4}, Lcom/google/a/c/e;->a()Z

    move-result v3

    if-eqz v3, :cond_69

    sget-object v3, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    iget v6, v4, Lcom/google/a/c/e;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    sget-object v3, Lcom/google/a/s;->STRUCTURED_APPEND_PARITY:Lcom/google/a/s;

    iget v4, v4, Lcom/google/a/c/e;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_69
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Lcom/google/a/q; {:try_start_18 .. :try_end_6c} :catch_6c

    :catch_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_6f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_78

    sget-object p1, Lcom/google/a/f/a/a;->b:[Lcom/google/a/r;

    return-object p1

    :cond_78
    invoke-static {v0}, Lcom/google/a/f/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/r;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/r;

    return-object p1
.end method
