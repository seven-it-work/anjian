.class public final Lcom/google/a/b/a/ag;
.super Lcom/google/a/b/a/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_16

    :cond_f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2a

    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p1, :cond_29

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_29
    return-object v0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/g;
    .registers 18

    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/ag;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "DTSTART"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d

    return-object v2

    :cond_1d
    const-string v1, "DTEND"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "DURATION"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "LOCATION"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "ATTENDEE"

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-static {v1, v0, v3, v10}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4a

    goto :goto_64

    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_51
    if-ge v13, v11, :cond_65

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_51

    :cond_64
    :goto_64
    move-object v12, v2

    :cond_65
    if-eqz v12, :cond_76

    const/4 v1, 0x0

    :goto_68
    array-length v11, v12

    if-ge v1, v11, :cond_76

    aget-object v11, v12, v1

    invoke-static {v11}, Lcom/google/a/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_76
    const-string v1, "DESCRIPTION"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "GEO"

    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_88

    move-wide v0, v13

    goto :goto_a2

    :cond_88
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_91

    return-object v2

    :cond_91
    :try_start_91
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_a2} :catch_ad

    :goto_a2
    :try_start_a2
    new-instance v16, Lcom/google/a/b/a/g;

    move-object/from16 v3, v16

    move-object v10, v12

    move-wide v12, v13

    move-wide v14, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/a/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_ac} :catch_ad

    return-object v16

    :catch_ad
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 2

    invoke-static {p1}, Lcom/google/a/b/a/ag;->c(Lcom/google/a/r;)Lcom/google/a/b/a/g;

    move-result-object p1

    return-object p1
.end method
