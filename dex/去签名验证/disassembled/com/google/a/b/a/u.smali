.class public abstract Lcom/google/a/b/a/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/a/b/a/u;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/lang/String; = "\ufeff"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/a/b/a/u;

    new-instance v1, Lcom/google/a/b/a/f;

    invoke-direct {v1}, Lcom/google/a/b/a/f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/c;

    invoke-direct {v1}, Lcom/google/a/b/a/c;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/j;

    invoke-direct {v1}, Lcom/google/a/b/a/j;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/b;

    invoke-direct {v1}, Lcom/google/a/b/a/b;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/af;

    invoke-direct {v1}, Lcom/google/a/b/a/af;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/e;

    invoke-direct {v1}, Lcom/google/a/b/a/e;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/ag;

    invoke-direct {v1}, Lcom/google/a/b/a/ag;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/i;

    invoke-direct {v1}, Lcom/google/a/b/a/i;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/y;

    invoke-direct {v1}, Lcom/google/a/b/a/y;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/aa;

    invoke-direct {v1}, Lcom/google/a/b/a/aa;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/v;

    invoke-direct {v1}, Lcom/google/a/b/a/v;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/x;

    invoke-direct {v1}, Lcom/google/a/b/a/x;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/n;

    invoke-direct {v1}, Lcom/google/a/b/a/n;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/ak;

    invoke-direct {v1}, Lcom/google/a/b/a/ak;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/ae;

    invoke-direct {v1}, Lcom/google/a/b/a/ae;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/ad;

    invoke-direct {v1}, Lcom/google/a/b/a/ad;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/p;

    invoke-direct {v1}, Lcom/google/a/b/a/p;-><init>()V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/t;

    invoke-direct {v1}, Lcom/google/a/b/a/t;-><init>()V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/l;

    invoke-direct {v1}, Lcom/google/a/b/a/l;-><init>()V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/b/a/ai;

    invoke-direct {v1}, Lcom/google/a/b/a/ai;-><init>()V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/b/a/u;->a:[Lcom/google/a/b/a/u;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/u;->b:Ljava/util/regex/Pattern;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/u;->c:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/u;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1d
    if-ge v1, v2, :cond_31

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_2a

    if-eq v6, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x1

    goto :goto_2e

    :cond_2a
    :goto_2a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/a/u;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    :try_start_10
    invoke-static {p0}, Lcom/google/a/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3

    if-eqz p0, :cond_a

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6

    if-eqz p0, :cond_13

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method

.method protected static a(Ljava/lang/CharSequence;I)Z
    .registers 3

    if-eqz p0, :cond_18

    if-lez p1, :cond_18

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_18

    sget-object p1, Lcom/google/a/b/a/u;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method protected static a(Ljava/lang/CharSequence;II)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-gtz p2, :cond_6

    return v0

    :cond_6
    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, p2, :cond_1f

    sget-object v1, Lcom/google/a/b/a/u;->b:Ljava/util/regex/Pattern;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_64

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    move-object v6, v4

    move v4, v3

    :goto_18
    if-eqz v5, :cond_61

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_24
    const/4 v5, 0x0

    goto :goto_18

    :cond_26
    add-int/lit8 v7, v4, -0x1

    const/4 v8, 0x0

    :goto_29
    if-ltz v7, :cond_38

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_38

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_29

    :cond_38
    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3f

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3f
    if-nez v6, :cond_47

    new-instance v6, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_47
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/a/b/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_55

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_55
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5e

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_61
    move v3, v4

    move-object v4, v6

    goto :goto_8

    :cond_64
    if-eqz v4, :cond_7a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6d

    return-object v1

    :cond_6d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_7a
    return-object v1
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-ltz p1, :cond_12

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method protected static b(Lcom/google/a/r;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    const-string v0, "\ufeff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/a/b/a/u;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 5

    sget-object v0, Lcom/google/a/b/a/u;->a:[Lcom/google/a/b/a/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/google/a/b/a/u;->a(Lcom/google/a/r;)Lcom/google/a/b/a/q;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    new-instance v0, Lcom/google/a/b/a/ab;

    iget-object p0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/a/b/a/ab;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sget-object v2, Lcom/google/a/b/a/u;->c:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v0, :cond_3b

    aget-object v5, p0, v4

    sget-object v6, Lcom/google/a/b/a/u;->d:Ljava/util/regex/Pattern;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-ne v6, v7, :cond_38

    aget-object v6, v5, v2

    aget-object v5, v5, v3

    :try_start_31
    invoke-static {v5}, Lcom/google/a/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3b
    return-object v1
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
.end method
