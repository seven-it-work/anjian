.class public final Lcom/google/a/g/h;
.super Lcom/google/a/g/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/g/s;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_8
    if-ltz v0, :cond_1e

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p1, :cond_1b

    const/4 v3, 0x1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    rem-int/lit8 v2, v2, 0x2f

    return v2
.end method

.method private static a([ZI[I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result p0

    return p0
.end method

.method private static a(I[I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge v1, v2, :cond_14

    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p0

    if-nez v2, :cond_f

    const/4 v3, 0x0

    :cond_f
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method private static b([ZI[I)I
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v0, :cond_15

    aget v3, p2, p1

    add-int/lit8 v4, v2, 0x1

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    aput-boolean v3, p0, v2

    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_4

    :cond_15
    const/16 p0, 0x9

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
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

    sget-object v0, Lcom/google/a/a;->CODE_93:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode CODE_93, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/google/a/g/s;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_18

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    const/16 v1, 0x9

    new-array v2, v1, [I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x9

    const/4 v1, 0x1

    add-int/2addr v3, v1

    sget-object v4, Lcom/google/a/g/g;->b:[I

    const/16 v5, 0x2f

    aget v4, v4, v5

    invoke-static {v4, v2}, Lcom/google/a/g/h;->a(I[I)V

    new-array v3, v3, [Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result v6

    :goto_38
    if-ge v4, v0, :cond_53

    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    sget-object v8, Lcom/google/a/g/g;->b:[I

    aget v7, v8, v7

    invoke-static {v7, v2}, Lcom/google/a/g/h;->a(I[I)V

    invoke-static {v3, v6, v2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_53
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/a/g/h;->a(Ljava/lang/String;I)I

    move-result v0

    sget-object v4, Lcom/google/a/g/g;->b:[I

    aget v4, v4, v0

    invoke-static {v4, v2}, Lcom/google/a/g/h;->a(I[I)V

    invoke-static {v3, v6, v2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result v4

    add-int/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/google/a/g/h;->a(Ljava/lang/String;I)I

    move-result p1

    sget-object v0, Lcom/google/a/g/g;->b:[I

    aget p1, v0, p1

    invoke-static {p1, v2}, Lcom/google/a/g/h;->a(I[I)V

    invoke-static {v3, v6, v2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result p1

    add-int/2addr v6, p1

    sget-object p1, Lcom/google/a/g/g;->b:[I

    aget p1, p1, v5

    invoke-static {p1, v2}, Lcom/google/a/g/h;->a(I[I)V

    invoke-static {v3, v6, v2}, Lcom/google/a/g/h;->b([ZI[I)I

    move-result p1

    add-int/2addr v6, p1

    aput-boolean v1, v3, v6

    return-object v3
.end method
