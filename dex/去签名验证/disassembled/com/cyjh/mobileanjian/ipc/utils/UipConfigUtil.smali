.class public Lcom/cyjh/mobileanjian/ipc/utils/UipConfigUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_15
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u754c\u9762"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_27
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/UipConfigUtil;->a(Landroid/util/JsonReader;Lorg/json/JSONObject;)V

    goto :goto_27

    :cond_34
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    :cond_37
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_42
    :goto_42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/util/JsonReader;Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6c34\u5e73\u5e03\u5c40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0, p1}, Lcom/cyjh/mobileanjian/ipc/utils/UipConfigUtil;->a(Landroid/util/JsonReader;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_19
    const-string v1, "\u591a\u9009\u6846"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_26
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u540d\u79f0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_3d
    const-string v1, "\u9009\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    goto :goto_26

    :cond_4a
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_26

    :cond_4e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_57
    const-string v1, "\u8f93\u5165\u6846"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v3

    :goto_63
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u540d\u79f0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_7a
    const-string v2, "\u521d\u59cb\u6587\u672c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_87
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_63

    :cond_8b
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_95
    const-string v1, "\u4e0b\u62c9\u6846"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_a0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u540d\u79f0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a0

    :cond_b7
    const-string v1, "\u521d\u59cb\u9009\u9879"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_a0

    :cond_c4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a0

    :cond_c8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_d2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    :cond_d7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_da} :catch_e0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_da} :catch_db

    return-void

    :catch_db
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :catch_e0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static saveToConfigFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/UipConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_e
    invoke-static {p1, p0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
