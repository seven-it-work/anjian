.class public final Lcom/b/a/a/c/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c/f;->a:Ljava/util/regex/Pattern;

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

.method public static a(Lcom/b/a/aa;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/b/a/as;)J
    .registers 3

    invoke-virtual {p0}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p0

    invoke-static {p0}, Lcom/b/a/a/c/f;->a(Lcom/b/a/aa;)J

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

.method public static a(Lcom/b/a/s;Lcom/b/a/ac;Lcom/b/a/aa;)V
    .registers 4

    sget-object v0, Lcom/b/a/s;->a:Lcom/b/a/s;

    if-ne p0, v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1, p2}, Lcom/b/a/r;->a(Lcom/b/a/ac;Lcom/b/a/aa;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    invoke-interface {p0}, Lcom/b/a/s;->a()V

    return-void
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

.method public static b(Lcom/b/a/as;)Z
    .registers 9

    invoke-virtual {p0}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p0}, Lcom/b/a/as;->b()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/f;->a(Lcom/b/a/aa;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_46

    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    return v3

    :cond_45
    return v1

    :cond_46
    return v3
.end method
