.class public final Lcom/umeng/commonsdk/proguard/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/ab$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/proguard/ab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ab$a;-><init>(Lcom/umeng/commonsdk/proguard/ab$1;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BB)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(DD)I
    .registers 5

    cmpg-double v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    cmpg-double v0, p2, p0

    if-gez v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(II)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    cmp-long v0, p2, p0

    if-gez v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 2

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_d

    check-cast p0, Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :cond_d
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0

    :cond_1a
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_27

    check-cast p0, Ljava/util/Set;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result p0

    return p0

    :cond_27
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p0

    return p0

    :cond_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_41

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a([B[B)I

    move-result p0

    return p0

    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot compare objects of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;[BI)I
    .registers 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr v2, p0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/ab;->a(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    sget-object v2, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_28

    return v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    return v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)I
    .registers 7

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/ab;->a(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_5c

    return v2

    :cond_5c
    sget-object v2, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_33

    return v0

    :cond_6d
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)I
    .registers 5

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/ab;->a(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/TreeSet;

    sget-object v1, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-direct {p0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/umeng/commonsdk/proguard/ab;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2b

    return v0

    :cond_48
    const/4 p0, 0x0

    return p0
.end method

.method public static a(SS)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ZZ)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p0

    return p0
.end method

.method public static a([B[B)I
    .registers 6

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/ab;->a(II)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/proguard/ab;->a(BB)I

    move-result v2

    if-eqz v2, :cond_19

    return v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    return v0
.end method

.method public static a(B)Ljava/lang/String;
    .registers 2

    or-int/lit16 p0, p0, 0x100

    and-int/lit16 p0, p0, 0x1ff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V
    .registers 7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr v1, p0

    sub-int p0, v1, v2

    const/16 v3, 0x80

    if-le p0, v3, :cond_1b

    add-int/lit16 p0, v2, 0x80

    goto :goto_1c

    :cond_1b
    move p0, v1

    :goto_1c
    move v3, v2

    :goto_1d
    if-ge v3, p0, :cond_32

    if-le v3, v2, :cond_26

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    aget-byte v4, v0, v3

    invoke-static {v4}, Lcom/umeng/commonsdk/proguard/ab;->a(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_32
    if-eq v1, p0, :cond_39

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 3

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ab;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/nio/ByteBuffer;[BI)I

    return-object v0
.end method

.method public static a([B)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    if-ne v0, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ab;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v1, v2, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
