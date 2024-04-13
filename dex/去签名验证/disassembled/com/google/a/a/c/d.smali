.class public final Lcom/google/a/a/c/d;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:I = 0x0

.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3

.field static final f:I = 0x4

.field static final g:[[I

.field static final h:[[I

.field private static final j:[[I


# instance fields
.field final i:[B


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string v0, "UPPER"

    const-string v1, "LOWER"

    const-string v2, "DIGIT"

    const-string v3, "MIXED"

    const-string v4, "PUNCT"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/c/d;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_11a

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_128

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_136

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_144

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_152

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/a/a/c/d;->g:[[I

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v0, 0x41

    :goto_55
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_65

    sget-object v2, Lcom/google/a/a/c/d;->j:[[I

    aget-object v2, v2, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_65
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    const/16 v0, 0x61

    :goto_6d
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_7d

    sget-object v2, Lcom/google/a/a/c/d;->j:[[I

    aget-object v2, v2, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_7d
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    const/16 v0, 0x30

    :goto_85
    const/16 v1, 0x39

    if-gt v0, v1, :cond_95

    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    aget-object v1, v1, v5

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v2, v5

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_95
    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lcom/google/a/a/c/d;->j:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_160

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v0, :cond_be

    sget-object v8, Lcom/google/a/a/c/d;->j:[[I

    aget-object v8, v8, v6

    aget v9, v1, v2

    aput v2, v8, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    :cond_be
    const/16 v1, 0x1f

    new-array v2, v1, [I

    fill-array-data v2, :array_19c

    const/4 v8, 0x0

    :goto_c6
    if-ge v8, v1, :cond_d7

    aget v9, v2, v8

    if-lez v9, :cond_d4

    sget-object v9, Lcom/google/a/a/c/d;->j:[[I

    aget-object v9, v9, v7

    aget v10, v2, v8

    aput v8, v9, v10

    :cond_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_c6

    :cond_d7
    const/4 v1, 0x6

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/a/a/c/d;->h:[[I

    array-length v2, v1

    const/4 v8, 0x0

    :goto_e8
    if-ge v8, v2, :cond_f3

    aget-object v9, v1, v8

    const/4 v10, -0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e8

    :cond_f3
    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v3

    aput v3, v1, v7

    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v4

    aput v3, v1, v7

    sget-object v1, Lcom/google/a/a/c/d;->h:[[I

    aget-object v1, v1, v4

    aput v0, v1, v3

    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v6

    aput v3, v0, v7

    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v5

    aput v3, v0, v7

    sget-object v0, Lcom/google/a/a/c/d;->h:[[I

    aget-object v0, v0, v5

    const/16 v1, 0xf

    aput v1, v0, v3

    return-void

    :array_11a
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_128
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_136
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_144
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_152
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_160
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_19c
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/c/d;->i:[B

    return-void
.end method

.method private a()Lcom/google/a/c/a;
    .registers 14

    sget-object v0, Lcom/google/a/a/c/f;->a:Lcom/google/a/a/c/f;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Lcom/google/a/a/c/d;->i:[B

    array-length v3, v3

    if-ge v0, v3, :cond_a4

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/a/a/c/d;->i:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1a

    iget-object v4, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v4, v4, v3

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    iget-object v5, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v5, v5, v0

    const/16 v6, 0xd

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eq v5, v6, :cond_42

    const/16 v6, 0x2c

    const/16 v10, 0x20

    if-eq v5, v6, :cond_3e

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_36

    :cond_34
    const/4 v4, 0x0

    goto :goto_47

    :cond_36
    if-ne v4, v10, :cond_34

    const/4 v4, 0x5

    goto :goto_47

    :cond_3a
    if-ne v4, v10, :cond_34

    const/4 v4, 0x3

    goto :goto_47

    :cond_3e
    if-ne v4, v10, :cond_34

    const/4 v4, 0x4

    goto :goto_47

    :cond_42
    const/16 v5, 0xa

    if-ne v4, v5, :cond_34

    const/4 v4, 0x2

    :goto_47
    const/4 v5, 0x1

    if-lez v4, :cond_9d

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/a/a/c/f;

    invoke-virtual {v10, v0}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v11

    invoke-virtual {v11, v9, v4}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v12, v10, Lcom/google/a/a/c/f;->b:I

    if-eq v12, v9, :cond_75

    invoke-virtual {v11, v9, v4}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_75
    if-eq v4, v7, :cond_79

    if-ne v4, v9, :cond_86

    :cond_79
    rsub-int/lit8 v12, v4, 0x10

    invoke-virtual {v11, v8, v12}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v11

    invoke-virtual {v11, v8, v5}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_86
    iget v11, v10, Lcom/google/a/a/c/f;->c:I

    if-lez v11, :cond_53

    invoke-virtual {v10, v0}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_96
    invoke-static {v6}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    move-object v2, v0

    move v0, v3

    goto :goto_a1

    :cond_9d
    invoke-direct {p0, v2, v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v2

    :goto_a1
    add-int/2addr v0, v5

    goto/16 :goto_9

    :cond_a4
    new-instance v0, Lcom/google/a/a/c/d$1;

    invoke-direct {v0, p0}, Lcom/google/a/a/c/d$1;-><init>(Lcom/google/a/a/c/d;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/c/f;

    iget-object v1, p0, Lcom/google/a/a/c/d;->i:[B

    invoke-virtual {v0, v1}, Lcom/google/a/a/c/f;->a([B)Lcom/google/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/a/a/c/f;

    invoke-virtual {v4, v1}, Lcom/google/a/a/c/f;->a(Lcom/google/a/a/c/f;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v2, 0x0

    goto :goto_38

    :cond_2e
    invoke-virtual {v1, v4}, Lcom/google/a/a/c/f;->a(Lcom/google/a/a/c/f;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_38
    :goto_38
    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3e
    return-object v0
.end method

.method private a(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/a/a/c/d;->a(Lcom/google/a/a/c/f;ILjava/util/Collection;)V

    goto :goto_9

    :cond_19
    invoke-static {v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/a/a/c/f;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/c/f;

    invoke-virtual {v1, p1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v4, v1, Lcom/google/a/a/c/f;->b:I

    if-eq v4, v3, :cond_2c

    invoke-virtual {v2, v3, p2}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2c
    const/4 v4, 0x3

    if-eq p2, v4, :cond_31

    if-ne p2, v3, :cond_40

    :cond_31
    rsub-int/lit8 v3, p2, 0x10

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_40
    iget v2, v1, Lcom/google/a/a/c/f;->c:I

    if-lez v2, :cond_9

    invoke-virtual {v1, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_52
    invoke-static {v0}, Lcom/google/a/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/a/a/c/f;IILjava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c/f;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/google/a/a/c/f;->b:I

    if-eq v2, v1, :cond_17

    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1d

    if-ne p2, v1, :cond_2b

    :cond_1d
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object p2

    invoke-virtual {p2, v1, v3}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget p2, p0, Lcom/google/a/a/c/f;->c:I

    if-lez p2, :cond_3b

    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/a/c/f;ILjava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c/f;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/a/a/c/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/a/c/d;->i:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    iget v2, p1, Lcom/google/a/a/c/f;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const/4 v3, 0x0

    :goto_16
    const/4 v4, 0x4

    if-gt v2, v4, :cond_4d

    sget-object v4, Lcom/google/a/a/c/d;->j:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_4a

    if-nez v3, :cond_27

    invoke-virtual {p1, p2}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v3

    :cond_27
    if-eqz v1, :cond_30

    iget v5, p1, Lcom/google/a/a/c/f;->b:I

    if-eq v2, v5, :cond_30

    const/4 v5, 0x2

    if-ne v2, v5, :cond_37

    :cond_30
    invoke-virtual {v3, v2, v4}, Lcom/google/a/a/c/f;->a(II)Lcom/google/a/a/c/f;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_37
    if-nez v1, :cond_4a

    sget-object v5, Lcom/google/a/a/c/d;->h:[[I

    iget v6, p1, Lcom/google/a/a/c/f;->b:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_4a

    invoke-virtual {v3, v2, v4}, Lcom/google/a/a/c/f;->b(II)Lcom/google/a/a/c/f;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_4d
    iget v1, p1, Lcom/google/a/a/c/f;->c:I

    if-gtz v1, :cond_5b

    sget-object v1, Lcom/google/a/a/c/d;->j:[[I

    iget v2, p1, Lcom/google/a/a/c/f;->b:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_62

    :cond_5b
    invoke-virtual {p1, p2}, Lcom/google/a/a/c/f;->a(I)Lcom/google/a/a/c/f;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_62
    return-void
.end method
