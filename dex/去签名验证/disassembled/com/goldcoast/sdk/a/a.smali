.class public final Lcom/goldcoast/sdk/a/a;
.super Lcom/goldcoast/sdk/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/goldcoast/sdk/a/c<",
        "Lcom/goldcoast/sdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/goldcoast/sdk/a/a;->a(Ljava/util/Map;)Lcom/goldcoast/sdk/a/a;

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/goldcoast/sdk/a/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/goldcoast/sdk/a/a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_17a

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17a

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_162

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "processorcnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    goto :goto_10

    :cond_39
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    goto :goto_10

    :cond_56
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    goto :goto_10

    :cond_73
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuimplementer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    goto :goto_10

    :cond_90
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuarchitecture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    goto/16 :goto_10

    :cond_ae
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuvariant"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    goto/16 :goto_10

    :cond_cc
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpupart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    goto/16 :goto_10

    :cond_ea
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpurevision"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    goto/16 :goto_10

    :cond_108
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_126

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    goto/16 :goto_10

    :cond_126
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "revision"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_144

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    goto/16 :goto_10

    :cond_144
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    goto/16 :goto_10

    :cond_162
    :try_start_162
    iget-object p1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_162 .. :try_end_174} :catch_175

    return-object p0

    :catch_175
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object p0

    :cond_17a
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "processorcnt"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string v2, ""

    goto :goto_10

    :cond_e
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    :goto_10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modelname"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    if-nez v2, :cond_1c

    const-string v2, ""

    goto :goto_1e

    :cond_1c
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    :goto_1e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "features"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    if-nez v2, :cond_2a

    const-string v2, ""

    goto :goto_2c

    :cond_2a
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    :goto_2c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuimplementer"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    if-nez v2, :cond_38

    const-string v2, ""

    goto :goto_3a

    :cond_38
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    :goto_3a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuarchitecture"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    if-nez v2, :cond_46

    const-string v2, ""

    goto :goto_48

    :cond_46
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    :goto_48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuvariant"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    if-nez v2, :cond_54

    const-string v2, ""

    goto :goto_56

    :cond_54
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    :goto_56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpupart"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    if-nez v2, :cond_62

    const-string v2, ""

    goto :goto_64

    :cond_62
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    :goto_64
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpurevision"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    if-nez v2, :cond_70

    const-string v2, ""

    goto :goto_72

    :cond_70
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    :goto_72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hardware"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    if-nez v2, :cond_7e

    const-string v2, ""

    goto :goto_80

    :cond_7e
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    :goto_80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "revision"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    if-nez v2, :cond_8c

    const-string v2, ""

    goto :goto_8e

    :cond_8c
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    :goto_8e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serial"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    if-nez v2, :cond_9a

    const-string v2, ""

    goto :goto_9c

    :cond_9a
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    :goto_9c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9f} :catch_a0

    return-object v0

    :catch_a0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method
