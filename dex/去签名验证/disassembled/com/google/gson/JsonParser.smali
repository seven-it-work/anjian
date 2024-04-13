.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_8
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_c} :catch_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_c} :catch_12
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v1

    :catchall_10
    move-exception v1

    goto :goto_46

    :catch_12
    move-exception v1

    :try_start_13
    new-instance v2, Lcom/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed parsing JSON source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2c
    move-exception v1

    new-instance v2, Lcom/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed parsing JSON source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_10

    :goto_46
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v1
.end method

.method public final parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1f

    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_1f} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    return-object p1

    :catch_20
    move-exception p1

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_27
    move-exception p1

    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2e
    move-exception p1

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
