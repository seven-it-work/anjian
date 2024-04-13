.class public Lcom/sun/activation/registries/MimeTypeFile;
.super Ljava/lang/Object;


# instance fields
.field private fname:Ljava/lang/String;

.field private type_hash:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :try_start_1b
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    return-void

    :catchall_27
    move-exception p1

    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    :catch_2b
    throw p1
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    if-eqz v1, :cond_d

    invoke-direct {p0, v1}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    if-nez v1, :cond_11

    goto :goto_21

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3b

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3b

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3b
    invoke-direct {p0, v2}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseEntry(Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_15

    return-void

    :cond_15
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_b1

    new-instance v0, Lcom/sun/activation/registries/LineTokenizer;

    invoke-direct {v0, p1}, Lcom/sun/activation/registries/LineTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_24
    :goto_24
    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v0}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    :cond_4c
    move-object v4, v1

    :goto_4d
    if-nez v4, :cond_67

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad .mime.types entry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_66
    return-void

    :cond_67
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    move-object v2, v4

    goto :goto_24

    :cond_71
    const-string v5, "exts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_24

    :cond_87
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v5, v2, v4}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_80

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Added: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_80

    :cond_b1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    if-nez p1, :cond_bd

    return-void

    :cond_bd
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    :cond_c1
    :goto_c1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_c8

    return-void

    :cond_c8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v2, p1, v1}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Added: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_c1
.end method


# virtual methods
.method public appendToRegistry(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sun/activation/registries/MimeTypeEntry;->getMIMEType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;
    .registers 3

    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/activation/registries/MimeTypeEntry;

    return-object p1
.end method
