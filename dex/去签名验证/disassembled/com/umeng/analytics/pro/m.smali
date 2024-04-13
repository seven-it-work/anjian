.class public Lcom/umeng/analytics/pro/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl"

.field private static final e:Ljava/lang/String; = "-1"

.field private static f:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private g:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/pro/m;->b:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/pro/m;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/m;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    :try_start_12
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->b(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/m$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/m$a;->a()Lcom/umeng/analytics/pro/m;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_11f

    if-eqz v1, :cond_11f

    :try_start_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ab

    instance-of v3, v1, [I

    if-eqz v3, :cond_52

    check-cast v1, [I

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_43
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_4e
    :goto_4e
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_52
    instance-of v3, v1, [D

    if-eqz v3, :cond_68

    check-cast v1, [D

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_5d
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_68
    instance-of v3, v1, [J

    if-eqz v3, :cond_7e

    check-cast v1, [J

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_73
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_7e
    instance-of v3, v1, [F

    if-eqz v3, :cond_95

    check-cast v1, [F

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_89
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    aget v5, v1, v4

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_95
    instance-of v3, v1, [S

    if-eqz v3, :cond_d

    check-cast v1, [S

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_a0
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    aget-short v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    :cond_ab
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_ea

    check-cast v1, Ljava/util/List;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_b6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_d8

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_d8

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_d8

    instance-of v6, v5, Ljava/lang/Float;

    if-nez v6, :cond_d8

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_d8

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_df

    :cond_d8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_df
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_e2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_d

    goto/16 :goto_4e

    :cond_ea
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_fd

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_f8
    :goto_f8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_d

    :cond_fd
    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_f8

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_f8

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_f8

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_f8

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_112

    goto :goto_f8

    :cond_112
    const-string v1, "The param has not support type. please check !"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_117} :catch_119

    goto/16 :goto_d

    :catch_119
    move-exception v1

    :try_start_11a
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_11f

    goto/16 :goto_d

    :catch_11f
    :cond_11f
    return-object v0
.end method

.method private a()V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const-string v1, "track_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    :goto_21
    array-length v4, v0

    if-ge v2, v4, :cond_40

    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    array-length v2, v0

    const/16 v4, 0xa

    if-lt v2, v4, :cond_56

    :goto_4c
    if-ge v3, v4, :cond_61

    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_56
    :goto_56
    array-length v2, v0

    if-ge v3, v2, :cond_61

    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_61
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_16
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1a
    const/4 p2, 0x0

    goto :goto_16
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    :try_start_0
    const-string v0, "$st_fl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "du"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "ts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_13

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_13

    const/16 v0, 0x80

    if-gt p1, v0, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const-string p1, "Event id is empty or too long in tracking Event"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_18

    :catch_18
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "fs_lc_tl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    :cond_18
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x100

    if-gt p1, v1, :cond_12

    return v0

    :cond_12
    const-string p1, "Event label or value is empty or too long in tracking Event"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_17

    :catch_17
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4e

    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string p1, "map has NULL key. please check!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v0

    :cond_30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    return v0

    :cond_37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_4e
    :goto_4e
    const-string p1, "map is null or empty in onEvent"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_54

    return v0

    :catch_54
    :cond_54
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_1d

    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fs_lc_tl"

    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    check-cast p1, Lcom/umeng/analytics/pro/i$d;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->d()J

    move-result-wide v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    :cond_19
    const/16 p1, 0x80

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "_$!id"

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "_$!ts"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__ii"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v3, "-1"

    :cond_40
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_47} :catch_cb

    if-nez v3, :cond_59

    :try_start_49
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_59

    const-string v2, "_$!sp"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_59} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_59} :catch_cb

    :catch_59
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    if-eqz v1, :cond_97

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_97

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_70} :catch_cb

    if-eqz v3, :cond_97

    :try_start_72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/umeng/analytics/pro/b;->aq:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6c

    :cond_8c
    const-string v3, "the key in map about track interface is invalid.  "

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_91} :catch_92

    goto :goto_6c

    :catch_92
    move-exception v3

    :try_start_93
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6c

    :cond_97
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "$st_fl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    :cond_c1
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_cb} :catch_cb

    :catch_cb
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6d

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_d

    return-void

    :cond_d
    sget-object p5, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1f

    const-string p1, "the id is valid!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1f
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    invoke-virtual {p5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_3d

    const-string v0, "du"

    invoke-virtual {p5, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3d
    const-string p3, "__t"

    const/16 p4, 0x801

    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez p2, :cond_48

    const-string p2, ""

    :cond_48
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5d

    const-string p1, "-1"

    :cond_5d
    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    invoke-static {p1, p2, p3, p5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "du"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "__t"

    const/16 v2, 0x802

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    const/16 p2, 0xa

    if-ge v1, p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const-string v2, "$st_fl"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "du"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "id"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "ts"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_7f

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_7f

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_88

    :cond_7f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_8b
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string p1, "-1"

    :cond_9d
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1002

    sget-object v1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_ad} :catch_ad

    :catch_ad
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    sget-object v0, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "the id is valid!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-lez p1, :cond_3e

    const-string p1, "du"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3e
    const-string p1, "__t"

    const/16 p3, 0x801

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_4e
    const/16 p3, 0xa

    if-ge p2, p3, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object p4, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_88

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    instance-of v1, p4, Ljava/lang/String;

    if-nez v1, :cond_7e

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_7e

    instance-of v1, p4, Ljava/lang/Long;

    if-eqz v1, :cond_8d

    :cond_7e
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8d

    :cond_88
    const-string p3, "the key in map is invalid.  "

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    :cond_90
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a2

    const-string p1, "-1"

    :cond_a2
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b2} :catch_b2

    :catch_b2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8a

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    const/16 v1, 0x80

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_52

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v0, :cond_4c

    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-nez v5, :cond_2e

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    goto :goto_36

    :cond_2e
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-ge v5, v2, :cond_4c

    :goto_36
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    invoke-static {v5, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_4c
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    return-void

    :cond_52
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v2, :cond_60

    const-string p1, "already setFistLaunchEvent, igone."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    :cond_60
    const/4 v0, 0x0

    :goto_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_85

    iget-object v4, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lt v4, v2, :cond_75

    const-string p1, " add setFistLaunchEvent over."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    :cond_75
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_85
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8a

    :catch_8a
    :cond_8a
    return-void
.end method
