.class public final Lcom/goldcoast/sdk/c/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/goldcoast/sdk/c/c;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "noend.ini"

    iput-object v0, p0, Lcom/goldcoast/sdk/c/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/goldcoast/sdk/c/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/goldcoast/sdk/c/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/goldcoast/sdk/c/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/goldcoast/sdk/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/goldcoast/sdk/c/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3f

    :try_start_37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3f
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/c;
    .registers 2

    sget-object v0, Lcom/goldcoast/sdk/c/c;->c:Lcom/goldcoast/sdk/c/c;

    if-nez v0, :cond_d

    sput-object p0, Lcom/goldcoast/sdk/c/c;->d:Landroid/content/Context;

    new-instance p0, Lcom/goldcoast/sdk/c/c;

    invoke-direct {p0}, Lcom/goldcoast/sdk/c/c;-><init>()V

    sput-object p0, Lcom/goldcoast/sdk/c/c;->c:Lcom/goldcoast/sdk/c/c;

    :cond_d
    sget-object p0, Lcom/goldcoast/sdk/c/c;->c:Lcom/goldcoast/sdk/c/c;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/goldcoast/sdk/c/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/goldcoast/sdk/c/c;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/goldcoast/sdk/c/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/goldcoast/sdk/c/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_51

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3e

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_4c

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goldcoast/sdk/c/c;->a(Ljava/lang/String;)V

    return-void

    :cond_4c
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/goldcoast/sdk/c/c;->a(Ljava/lang/String;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_51} :catch_52

    :cond_51
    return-void

    :catch_52
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_35

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2a} :catch_31

    if-eqz v3, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catch_31
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    return v2
.end method
