.class public final Lb/a/d/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "([^ \"=]*)"

.field private static final b:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/a/d/e;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    return p1
.end method

.method public static a(Lb/ae;)J
    .registers 3

    iget-object p0, p0, Lb/ae;->f:Lb/u;

    invoke-static {p0}, Lb/a/d/e;->a(Lb/u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lb/u;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/d/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v2

    :catch_a
    return-wide v0
.end method

.method private static a(Lb/u;Lb/u;)Lb/u;
    .registers 7

    invoke-static {p1}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p0, Lb/u$a;

    invoke-direct {p0}, Lb/u$a;-><init>()V

    invoke-virtual {p0}, Lb/u$a;->a()Lb/u;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lb/u;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_1f
    if-ge v1, v2, :cond_35

    invoke-virtual {p0, v1}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p0, v1}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lb/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_35
    invoke-virtual {v0}, Lb/u$a;->a()Lb/u;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/u;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/u;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lb/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_d

    sget-object v1, Lb/a/d/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v1, v7

    :goto_29
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const-string v4, "realm"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    new-instance p1, Lb/h;

    invoke-direct {p1, v1, v2}, Lb/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_55
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_29

    :cond_5a
    return-object v0
.end method

.method public static a(Lb/n;Lb/v;Lb/u;)V
    .registers 4

    sget-object v0, Lb/n;->a:Lb/n;

    if-ne p0, v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1, p2}, Lb/m;->a(Lb/v;Lb/u;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    invoke-interface {p0}, Lb/n;->a()V

    return-void
.end method

.method public static a(Lb/ae;Lb/u;Lb/ac;)Z
    .registers 6

    iget-object p0, p0, Lb/ae;->f:Lb/u;

    invoke-static {p0}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p2, Lb/ac;->c:Lb/u;

    invoke-virtual {v2, v0}, Lb/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lb/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-lez v2, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gez v2, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p0, v0

    return p0

    :catch_19
    return p1
.end method

.method public static b(Lb/ae;)Z
    .registers 2

    iget-object p0, p0, Lb/ae;->f:Lb/u;

    invoke-static {p0}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Lb/u;)Z
    .registers 2

    invoke-static {p0}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lb/ae;)Lb/u;
    .registers 7

    iget-object v0, p0, Lb/ae;->h:Lb/ae;

    iget-object v0, v0, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->c:Lb/u;

    iget-object p0, p0, Lb/ae;->f:Lb/u;

    invoke-static {p0}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance p0, Lb/u$a;

    invoke-direct {p0}, Lb/u$a;-><init>()V

    invoke-virtual {p0}, Lb/u$a;->a()Lb/u;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v1, Lb/u$a;

    invoke-direct {v1}, Lb/u$a;-><init>()V

    const/4 v2, 0x0

    iget-object v3, v0, Lb/u;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    :goto_27
    if-ge v2, v3, :cond_3d

    invoke-virtual {v0, v2}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v0, v2}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lb/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3d
    invoke-virtual {v1}, Lb/u$a;->a()Lb/u;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lb/u;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/u;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_44

    const-string v4, "Vary"

    invoke-virtual {p0, v0}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {p0, v0}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    new-instance v3, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2b
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v5, :cond_41

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_44
    return-object v3
.end method

.method public static d(Lb/ae;)Z
    .registers 9

    iget-object v0, p0, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget v0, p0, Lb/ae;->c:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_19

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_22

    :cond_19
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_22

    const/16 v2, 0x130

    if-eq v0, v2, :cond_22

    return v3

    :cond_22
    iget-object v0, p0, Lb/ae;->f:Lb/u;

    invoke-static {v0}, Lb/a/d/e;->a(Lb/u;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3e

    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v3

    :cond_3d
    return v1

    :cond_3e
    return v3
.end method

.method private static e(Lb/ae;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ae;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lb/ae;->f:Lb/u;

    invoke-static {p0}, Lb/a/d/e;->c(Lb/u;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
