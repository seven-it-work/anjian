.class public final Lcom/google/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/a/c/a;II)Lcom/google/a/c/b;
    .registers 12

    iget-object p0, p0, Lcom/google/a/a/c/a;->e:Lcom/google/a/c/b;

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p0, Lcom/google/a/c/b;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v0, v2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    new-instance v5, Lcom/google/a/c/b;

    invoke-direct {v5, p1, p2}, Lcom/google/a/c/b;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_31
    if-ge p2, v1, :cond_48

    move v7, v3

    const/4 v6, 0x0

    :goto_35
    if-ge v6, v0, :cond_44

    invoke-virtual {p0, v6, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v5, v7, v4, v2, v2}, Lcom/google/a/c/b;->a(IIII)V

    :cond_40
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_35

    :cond_44
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_31

    :cond_48
    return-object v5
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/a;IILjava/nio/charset/Charset;II)Lcom/google/a/c/b;
    .registers 8

    sget-object v0, Lcom/google/a/a;->AZTEC:Lcom/google/a/a;

    if-eq p1, v0, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only encode AZTEC, but got "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p5, p6}, Lcom/google/a/a/c/c;->a([BII)Lcom/google/a/a/c/a;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/google/a/a/c;->a(Lcom/google/a/a/c/a;II)Lcom/google/a/c/b;

    move-result-object p0

    return-object p0
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

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/a/c;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 10
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

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p5, :cond_49

    sget-object v3, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v0, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_1d
    sget-object v3, Lcom/google/a/g;->ERROR_CORRECTION:Lcom/google/a/g;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    sget-object v1, Lcom/google/a/g;->ERROR_CORRECTION:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_33
    sget-object v3, Lcom/google/a/g;->AZTEC_LAYERS:Lcom/google/a/g;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v2, Lcom/google/a/g;->AZTEC_LAYERS:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_49
    sget-object p5, Lcom/google/a/a;->AZTEC:Lcom/google/a/a;

    if-eq p2, p5, :cond_5d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode AZTEC, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/google/a/a/c/c;->a([BII)Lcom/google/a/a/c/a;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/a/a/c;->a(Lcom/google/a/a/c/a;II)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method
