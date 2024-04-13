.class public Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final DELIM:[C

.field private static final FRAGMENT:Ljava/util/BitSet;

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PATHSAFE:Ljava/util/BitSet;

.field private static final PUNCT:Ljava/util/BitSet;

.field private static final RADIX:I = 0x10

.field private static final RESERVED:Ljava/util/BitSet;

.field private static final UNRESERVED:Ljava/util/BitSet;

.field private static final URLENCODER:Ljava/util/BitSet;

.field private static final USERINFO:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x26

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->DELIM:[C

    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->FRAGMENT:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_3f
    const/16 v2, 0x7a

    if-le v0, v2, :cond_16d

    const/16 v0, 0x41

    :goto_45
    const/16 v2, 0x5a

    if-le v0, v2, :cond_164

    const/16 v0, 0x30

    :goto_4b
    const/16 v2, 0x39

    if-le v0, v2, :cond_15b

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    sget-object v2, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v5, 0x24

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v6, 0x2b

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    sget-object v8, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    sget-object v8, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    sget-object v8, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v9, 0x40

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->FRAGMENT:Ljava/util/BitSet;

    sget-object v1, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->FRAGMENT:Ljava/util/BitSet;

    sget-object v1, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void

    :cond_15b
    sget-object v2, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4b

    :cond_164
    sget-object v2, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_45

    :cond_16d
    sget-object v2, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    :goto_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_e

    :cond_b
    const-string p1, "UTF-8"

    goto :goto_6

    :goto_e
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urldecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_7

    goto :goto_d

    :cond_7
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_d
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urldecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->FRAGMENT:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    :goto_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_e

    :cond_b
    const-string p1, "UTF-8"

    goto :goto_6

    :goto_e
    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_7

    goto :goto_d

    :cond_7
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_d
    sget-object v0, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_35

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_35

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .registers 3

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1b

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1b
    return v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v1, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v2

    :cond_2b
    sget-object v3, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->DELIM:[C

    invoke-virtual {v0, v1, p0, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_24

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method public static parse(Ljava/net/URI;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;)V

    return-object v0

    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            ")V"
        }
    .end annotation

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :goto_5
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_35
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private static urldecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    :goto_10
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_55

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_55

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4c

    if-eq v4, v6, :cond_4c

    shl-int/lit8 v1, v5, 0x4

    add-int/2addr v1, v4

    goto :goto_5e

    :cond_4c
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, v3

    goto :goto_5f

    :cond_55
    if-eqz p2, :cond_5e

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_5e

    const/16 v1, 0x20

    goto :goto_5f

    :cond_5e
    :goto_5e
    int-to-byte v1, v1

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method private static urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_29

    int-to-char p1, p1

    :goto_25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_29
    if-eqz p3, :cond_32

    const/16 v1, 0x20

    if-ne p1, v1, :cond_32

    const/16 p1, 0x2b

    goto :goto_25

    :cond_32
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25
.end method
