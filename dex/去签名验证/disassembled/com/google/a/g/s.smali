.class public abstract Lcom/google/a/g/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([ZI[IZ)I
    .registers 11

    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    move v3, p3

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_6
    if-ge p1, v0, :cond_21

    aget v4, p2, p1

    move v5, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v4, :cond_16

    add-int/lit8 v6, v5, 0x1

    aput-boolean v3, p0, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_c

    :cond_16
    add-int/2addr p3, v4

    if-nez v3, :cond_1c

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    add-int/lit8 p1, p1, 0x1

    move v2, v5

    goto :goto_6

    :cond_21
    return p3
.end method

.method private static a([ZIII)Lcom/google/a/c/b;
    .registers 9

    array-length v0, p0

    add-int/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int p3, p1, p3

    mul-int v1, v0, p3

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Lcom/google/a/c/b;

    invoke-direct {v2, p1, p2}, Lcom/google/a/c/b;-><init>(II)V

    const/4 p1, 0x0

    move v3, v1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_28

    aget-boolean v4, p0, v1

    if-eqz v4, :cond_24

    invoke-virtual {v2, v3, p1, p3, p2}, Lcom/google/a/c/b;->a(IIII)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p3

    goto :goto_1b

    :cond_28
    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/g/s;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
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

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-ltz p3, :cond_38

    if-gez p4, :cond_13

    goto :goto_38

    :cond_13
    invoke-virtual {p0}, Lcom/google/a/g/s;->a()I

    move-result p2

    if-eqz p5, :cond_2f

    sget-object v0, Lcom/google/a/g;->MARGIN:Lcom/google/a/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object p2, Lcom/google/a/g;->MARGIN:Lcom/google/a/g;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/google/a/g/s;->a(Ljava/lang/String;)[Z

    move-result-object p1

    invoke-static {p1, p3, p4, p2}, Lcom/google/a/g/s;->a([ZIII)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    :cond_38
    :goto_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Negative size is not allowed. Input: "

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

.method public abstract a(Ljava/lang/String;)[Z
.end method
