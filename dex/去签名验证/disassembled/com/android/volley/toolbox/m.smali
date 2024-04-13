.class public final Lcom/android/volley/toolbox/m;
.super Lcom/android/volley/toolbox/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/o<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/android/volley/n$b<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_5

    const/4 p3, 0x0

    :goto_3
    move-object v3, p3

    goto :goto_a

    :cond_5
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :goto_a
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/i;->b:[B

    iget-object v2, p1, Lcom/android/volley/i;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/b$a;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/volley/n;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1c} :catch_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p1}, Lcom/android/volley/k;-><init>(Ljava/lang/Throwable;)V

    :goto_23
    invoke-static {v0}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object p1

    return-object p1

    :catch_28
    move-exception p1

    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p1}, Lcom/android/volley/k;-><init>(Ljava/lang/Throwable;)V

    goto :goto_23
.end method
