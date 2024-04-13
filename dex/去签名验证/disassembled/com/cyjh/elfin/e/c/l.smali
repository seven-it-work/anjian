.class public final Lcom/cyjh/elfin/e/c/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "BestResolution"

.field private static final b:Ljava/lang/String; = "X"

.field private static final c:Ljava/lang/String; = "Y"

.field private static final d:Ljava/lang/String; = "ChangeFileList"

.field private static final e:Ljava/lang/String; = "Description"

.field private static final f:Ljava/lang/String; = "FileVersion"

.field private static final g:Ljava/lang/String; = "Name"

.field private static final h:Ljava/lang/String; = "id"

.field private static final i:Ljava/lang/String; = "ScriptVersion"

.field private static final j:Ljava/lang/String; = "AppID"

.field private static final k:Ljava/lang/String; = "Version"

.field private static final l:Ljava/lang/String; = "SelID"

.field private static final m:Ljava/lang/String; = ".mq"

.field private static final n:Ljava/lang/String; = ".atc"

.field private static final o:Ljava/lang/String; = ".prop"

.field private static final p:Ljava/lang/String; = ".rtd"

.field private static final q:Ljava/lang/String; = ".ui"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/BestResolution;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/entity/BestResolution;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/BestResolution;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/BestResolution;->setX(I)V

    goto :goto_8

    :cond_22
    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/BestResolution;->setY(I)V

    goto :goto_8

    :cond_32
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :cond_36
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/cyjh/elfin/entity/Script;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    new-instance p0, Lcom/cyjh/elfin/entity/Script;

    invoke-direct {p0}, Lcom/cyjh/elfin/entity/Script;-><init>()V

    :cond_14
    :goto_14
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setAppId(Ljava/lang/String;)V

    goto :goto_14

    :cond_2e
    const-string v2, "BestResolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setBestResolution(Lcom/cyjh/elfin/entity/BestResolution;)V

    goto :goto_14

    :cond_3e
    const-string v2, "ChangeFileList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setChangeFileList(I)V

    goto :goto_14

    :cond_4e
    const-string v2, "Description"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setDescription(Ljava/lang/String;)V

    goto :goto_14

    :cond_5e
    const-string v2, "FileVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/l;->b(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setFileVersion(Lcom/cyjh/elfin/entity/FileVersion;)V

    goto :goto_14

    :cond_6e
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setName(Ljava/lang/String;)V

    goto :goto_14

    :cond_7e
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setId(Ljava/lang/String;)V

    goto :goto_14

    :cond_8e
    const-string v2, "SelID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setSelId(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_9f
    const-string v2, "Version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_b0
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3a

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScriptVersion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_1c

    :cond_36
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1c

    :cond_3a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "GBK"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScriptVersion"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_19

    :cond_33
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_19

    :cond_37
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/FileVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/entity/FileVersion;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FileVersion;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".atc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setAtc(I)V

    goto :goto_8

    :cond_22
    const-string v2, ".mq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setMq(I)V

    goto :goto_8

    :cond_32
    const-string v2, ".prop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setProp(I)V

    goto :goto_8

    :cond_42
    const-string v2, ".ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setUI(I)V

    goto :goto_8

    :cond_52
    const-string v2, ".rtd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setRtd(I)V

    goto :goto_8

    :cond_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :cond_66
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method
