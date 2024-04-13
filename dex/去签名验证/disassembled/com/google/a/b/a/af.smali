.class public final Lcom/google/a/b/a/af;
.super Lcom/google/a/b/a/u;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->c:Ljava/util/regex/Pattern;

    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->d:Ljava/util/regex/Pattern;

    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->e:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->f:Ljava/util/regex/Pattern;

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->g:Ljava/util/regex/Pattern;

    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_51

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4e

    const/16 v6, 0xd

    if-eq v4, v6, :cond_4e

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_28

    invoke-static {v2, p1, v1}, Lcom/google/a/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_28
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_4e

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_4e

    if-eq v4, v5, :cond_4e

    add-int/lit8 v3, v3, 0x2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4}, Lcom/google/a/b/a/af;->a(C)I

    move-result v4

    invoke-static {v5}, Lcom/google/a/b/a/af;->a(C)I

    move-result v5

    if-ltz v4, :cond_4e

    if-ltz v5, :cond_4e

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_51
    invoke-static {v2, p1, v1}, Lcom/google/a/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v1, :cond_17e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-lez v4, :cond_2d

    add-int/lit8 v4, v4, -0x1

    :cond_2d
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_17e

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_92

    sget-object v10, Lcom/google/a/b/a/af;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4a
    if-ge v11, v10, :cond_90

    aget-object v2, v6, v11

    if-nez v12, :cond_55

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_55
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/a/b/a/af;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v9, :cond_8b

    const/4 v3, 0x0

    aget-object v8, v2, v3

    aget-object v2, v2, v9

    const-string v3, "ENCODING"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const/4 v13, 0x1

    goto :goto_8b

    :cond_78
    const-string v3, "CHARSET"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    move-object v14, v2

    goto :goto_8b

    :cond_82
    const-string v3, "VALUE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    move-object v15, v2

    :cond_8b
    :goto_8b
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto :goto_4a

    :cond_90
    move-object v2, v15

    goto :goto_96

    :cond_92
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_96
    move v3, v4

    :goto_97
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_da

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    if-ge v3, v6, :cond_bb

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x20

    if-eq v8, v10, :cond_b8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_bb

    :cond_b8
    add-int/lit8 v3, v3, 0x2

    goto :goto_97

    :cond_bb
    if-eqz v13, :cond_da

    const/16 v6, 0x3d

    if-lez v3, :cond_cc

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_ca

    goto :goto_cc

    :cond_ca
    const/4 v8, 0x2

    goto :goto_d7

    :cond_cc
    :goto_cc
    const/4 v8, 0x2

    if-lt v3, v8, :cond_da

    add-int/lit8 v10, v3, -0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_da

    :goto_d7
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_da
    if-gez v3, :cond_e0

    move v4, v1

    :goto_dd
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_e0
    if-le v3, v4, :cond_178

    if-nez v5, :cond_e9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_e9
    if-lez v3, :cond_f7

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0xd

    if-ne v6, v8, :cond_f7

    add-int/lit8 v3, v3, -0x1

    :cond_f7
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_101

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_101
    if-eqz v13, :cond_11a

    invoke-static {v4, v14}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_150

    sget-object v8, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_150

    :cond_11a
    if-eqz p3, :cond_12c

    sget-object v8, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_12c
    sget-object v8, Lcom/google/a/b/a/af;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/google/a/b/a/af;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/google/a/b/a/af;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "$1"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_150
    :goto_150
    const-string v8, "uri"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    :try_start_158
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2
    :try_end_160
    .catch Ljava/lang/IllegalArgumentException; {:try_start_158 .. :try_end_160} :catch_161

    goto :goto_162

    :catch_161
    :cond_161
    move-object v2, v4

    :goto_162
    if-nez v12, :cond_170

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_178

    :cond_170
    const/4 v4, 0x0

    invoke-interface {v12, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_179

    :cond_178
    :goto_178
    const/4 v4, 0x0

    :goto_179
    add-int/lit8 v2, v3, 0x1

    move v4, v2

    goto/16 :goto_dd

    :cond_17e
    return-object v5
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_28

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_22

    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_1b

    move-object p1, v1

    goto :goto_22

    :catch_1b
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_22
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    return-void
.end method

.method private static a(Ljava/lang/Iterable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5f

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1e
    const/4 v6, 0x4

    if-ge v4, v6, :cond_34

    const/16 v7, 0x3b

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_34

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v7, 0x1

    goto :goto_1e

    :cond_34
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x3

    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v3, v1, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v3, v6, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5f
    return-void
.end method

.method private static a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 4

    aget-object v0, p0, p1

    if-eqz v0, :cond_1c

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_11

    sget-object v0, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_42

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_71

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x1

    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_49

    move-object v2, v5

    goto :goto_60

    :cond_49
    const-string v7, "TYPE"

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_60

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_5f
    move-object v2, v0

    :goto_60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_71
    return-object v0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/d;
    .registers 26

    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/af;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_151

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_151

    :cond_18
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    if-nez v1, :cond_85

    const-string v1, "N"

    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_85

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_46
    const/4 v12, 0x4

    if-ge v10, v12, :cond_5c

    const/16 v13, 0x3b

    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ltz v13, :cond_5c

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v13, 0x1

    goto :goto_46

    :cond_5c
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x3

    invoke-static {v9, v10, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v2, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v5, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v4, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v12, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_85
    const-string v6, "NICKNAME"

    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_8f

    const/4 v9, 0x0

    goto :goto_9c

    :cond_8f
    sget-object v7, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_9c
    const-string v6, "TEL"

    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-static {v7, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    const-string v8, "NOTE"

    invoke-static {v8, v0, v4, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    const-string v10, "ADR"

    invoke-static {v10, v0, v2, v2}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    const-string v11, "ORG"

    invoke-static {v11, v0, v2, v2}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const-string v12, "BDAY"

    invoke-static {v12, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_dd

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_d9

    sget-object v14, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_d7

    goto :goto_d9

    :cond_d7
    const/4 v13, 0x0

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v13, 0x1

    :goto_da
    if-nez v13, :cond_dd

    const/4 v12, 0x0

    :cond_dd
    const-string v13, "TITLE"

    invoke-static {v13, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v14, "URL"

    invoke-static {v14, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const-string v15, "IMPP"

    invoke-static {v15, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const-string v3, "GEO"

    invoke-static {v3, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f9

    const/4 v3, 0x0

    goto :goto_105

    :cond_f9
    sget-object v2, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    :goto_105
    if-eqz v3, :cond_10d

    array-length v0, v3

    if-eq v0, v5, :cond_10d

    const/16 v23, 0x0

    goto :goto_10f

    :cond_10d
    move-object/from16 v23, v3

    :goto_10f
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v6}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v15}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v10}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    invoke-static {v10}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    invoke-static {v11}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v12}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v13}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v14}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v22

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v23}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_151
    :goto_151
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 27

    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/af;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_151

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_151

    :cond_18
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    if-nez v1, :cond_85

    const-string v1, "N"

    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_85

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_46
    const/4 v12, 0x4

    if-ge v10, v12, :cond_5c

    const/16 v13, 0x3b

    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ltz v13, :cond_5c

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v13, 0x1

    goto :goto_46

    :cond_5c
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x3

    invoke-static {v9, v10, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v2, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v5, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v4, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v12, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_85
    const-string v6, "NICKNAME"

    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_8f

    const/4 v9, 0x0

    goto :goto_9c

    :cond_8f
    sget-object v7, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_9c
    const-string v6, "TEL"

    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-static {v7, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    const-string v8, "NOTE"

    invoke-static {v8, v0, v4, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    const-string v10, "ADR"

    invoke-static {v10, v0, v2, v2}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    const-string v11, "ORG"

    invoke-static {v11, v0, v2, v2}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const-string v12, "BDAY"

    invoke-static {v12, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_dd

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_d9

    sget-object v14, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_d7

    goto :goto_d9

    :cond_d7
    const/4 v13, 0x0

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v13, 0x1

    :goto_da
    if-nez v13, :cond_dd

    const/4 v12, 0x0

    :cond_dd
    const-string v13, "TITLE"

    invoke-static {v13, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v14, "URL"

    invoke-static {v14, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const-string v15, "IMPP"

    invoke-static {v15, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const-string v3, "GEO"

    invoke-static {v3, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f9

    const/4 v3, 0x0

    goto :goto_105

    :cond_f9
    sget-object v2, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    :goto_105
    if-eqz v3, :cond_10d

    array-length v0, v3

    if-eq v0, v5, :cond_10d

    const/16 v23, 0x0

    goto :goto_10f

    :cond_10d
    move-object/from16 v23, v3

    :goto_10f
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v6}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v15}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v10}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    invoke-static {v10}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    invoke-static {v11}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v12}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v13}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v14}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v22

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v23}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_151
    :goto_151
    const/4 v0, 0x0

    return-object v0
.end method
