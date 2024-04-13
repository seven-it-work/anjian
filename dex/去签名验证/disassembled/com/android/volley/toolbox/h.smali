.class public final Lcom/android/volley/toolbox/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_8
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/android/volley/i;)Lcom/android/volley/b$a;
    .registers 20

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/volley/i;->c:Ljava/util/Map;

    const-string v4, "Date"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    invoke-static {v4}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    :goto_19
    const-string v4, "Cache-Control"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v4, :cond_88

    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_2f
    array-length v10, v4

    if-ge v9, v10, :cond_85

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v5, "no-cache"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    const-string v5, "no-store"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_81

    :cond_49
    const-string v5, "max-age="

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const/16 v5, 0x8

    :try_start_53
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_82

    move-wide v11, v5

    goto :goto_82

    :cond_5d
    const-string v5, "stale-while-revalidate="

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    const/16 v5, 0x17

    :try_start_67
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_82

    move-wide v14, v5

    goto :goto_82

    :cond_71
    const-string v5, "must-revalidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    const-string v5, "proxy-revalidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    :cond_81
    :goto_81
    const/4 v13, 0x1

    :catch_82
    :cond_82
    :goto_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_85
    const/16 v16, 0x1

    goto :goto_8f

    :cond_88
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :goto_8f
    const-string v4, "Expires"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9e

    invoke-static {v4}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_a0

    :cond_9e
    const-wide/16 v5, 0x0

    :goto_a0
    const-string v4, "Last-Modified"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_af

    invoke-static {v4}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_b1

    :cond_af
    const-wide/16 v9, 0x0

    :goto_b1
    const-string v4, "ETag"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v16, :cond_d0

    const-wide/16 v5, 0x3e8

    mul-long v11, v11, v5

    add-long v16, v1, v11

    if-eqz v13, :cond_c6

    move-wide/from16 v5, v16

    goto :goto_cc

    :cond_c6
    mul-long v14, v14, v5

    const/4 v1, 0x0

    add-long v1, v16, v14

    move-wide v5, v1

    :goto_cc
    move-wide v1, v5

    move-wide/from16 v5, v16

    goto :goto_e3

    :cond_d0
    const-wide/16 v16, 0x0

    cmp-long v11, v7, v16

    if-lez v11, :cond_e0

    cmp-long v11, v5, v7

    if-ltz v11, :cond_e0

    sub-long v11, v5, v7

    add-long v5, v1, v11

    move-wide v1, v5

    goto :goto_e3

    :cond_e0
    move-wide/from16 v1, v16

    move-wide v5, v1

    :goto_e3
    new-instance v11, Lcom/android/volley/b$a;

    invoke-direct {v11}, Lcom/android/volley/b$a;-><init>()V

    iget-object v0, v0, Lcom/android/volley/i;->b:[B

    iput-object v0, v11, Lcom/android/volley/b$a;->a:[B

    iput-object v4, v11, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    iput-wide v5, v11, Lcom/android/volley/b$a;->f:J

    iput-wide v1, v11, Lcom/android/volley/b$a;->e:J

    iput-wide v7, v11, Lcom/android/volley/b$a;->c:J

    iput-wide v9, v11, Lcom/android/volley/b$a;->d:J

    iput-object v3, v11, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    return-object v11
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_36

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_36

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    aget-object p0, v2, v0

    return-object p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_36
    return-object p1
.end method
