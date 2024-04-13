.class public final Lcom/google/a/b/a/n;
.super Lcom/google/a/b/a/u;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/n;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/m;
    .registers 13

    invoke-static {p0}, Lcom/google/a/b/a/n;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/a/b/a/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    :try_start_18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_6e

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_33

    return-object v1

    :cond_33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    cmpl-double v0, v5, v7

    if-gtz v0, :cond_6e

    const-wide v7, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4f

    return-object v1

    :cond_4f
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v7, 0x0

    if-nez v2, :cond_59

    goto :goto_67

    :cond_59
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_61} :catch_6e

    cmpg-double p0, v10, v7

    if-gez p0, :cond_66

    return-object v1

    :cond_66
    move-wide v7, v10

    :goto_67
    new-instance p0, Lcom/google/a/b/a/m;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/a/b/a/m;-><init>(DDDLjava/lang/String;)V

    return-object p0

    :catch_6e
    :cond_6e
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 2

    invoke-static {p1}, Lcom/google/a/b/a/n;->c(Lcom/google/a/r;)Lcom/google/a/b/a/m;

    move-result-object p1

    return-object p1
.end method
